#include "xclHALProxy.h"

#include "task.h"
#include <vector>
#include <thread>

class xclHALProxyAsync : public xclHALProxy
{
  xrt::task::queue m_queue;
  std::vector<std::thread> m_workers;

 public:
  template <typename T>
  using event = xrt::task::event<T>;

  xclHALProxyAsync(const char *shared, const char *bit, unsigned index = 0, const char *halLog = 0)
    : xclHALProxy(shared,bit,index,halLog)
  {
    for (int i=0; i<2; ++i)
      m_workers.emplace_back(std::thread(xrt::task::worker,std::ref(m_queue)));
  }

  ~xclHALProxyAsync()
  {
    m_queue.stop();
    for (auto& t : m_workers)
      t.join();
  }

  /**
   * Schedule a task to be executed by a worker thread
   *
   * This function is wired to support only member functions of this class.
   * If other functions are to be added as task, additional overloads will
   * be required to make appropriate calls to task::create.
   *
   * For example:
   *  auto ev = addTask(&hal::device::copyBufferDevice2Host,dest,src,size,skip)
   *
   * @param F
   *   The task member function pointer
   * @param Args
   *   The task arguments
   * @return
   *  Typed event to wait on and retrieve the task return value
   */
  template <typename F,typename ...Args>
  auto
  addTask(F&& f,Args&&... args) -> decltype(xrt::task::createM(m_queue,f,*this,std::forward<Args>(args)...))
  {
    return xrt::task::createM(m_queue,f,*this,std::forward<Args>(args)...);
  }
};
