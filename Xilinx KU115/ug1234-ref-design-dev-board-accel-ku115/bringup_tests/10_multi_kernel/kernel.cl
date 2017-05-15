
// Each kernel works over a total data set of KERNEL_LOOP_COUNT * LOCAL_SIZE per invocation
// swizzle from x y z w ==>> z w x y

#define KERNEL_LOOP_COUNT 0x4000
#define LOCAL_SIZE 0x2

__kernel __attribute__ ((reqd_work_group_size(LOCAL_SIZE, 1, 1)))
void vectorswizzle1(__global int4 *a)
{
    const int r = get_global_id(0);
    for (int i = 0; i < KERNEL_LOOP_COUNT; i++) {
        int4 foo1,foo2;
        foo1 = a[r * KERNEL_LOOP_COUNT + i];
        foo2 = foo1.zwxy;
        a[r * KERNEL_LOOP_COUNT + i] = foo2;
    }
}

__kernel __attribute__ ((reqd_work_group_size(LOCAL_SIZE, 1, 1)))
void vectorswizzle2(__global int4 *a)
{
    int r = get_global_id(0);
    for (int i = 0; i < KERNEL_LOOP_COUNT; i++) {
        int4 foo1,foo2;
        foo1 = a[r * KERNEL_LOOP_COUNT + i];
        foo2 = foo1.zwxy;
        a[r * KERNEL_LOOP_COUNT + i] = foo2;
    }
}
