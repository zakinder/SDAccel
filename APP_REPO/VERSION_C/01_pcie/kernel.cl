
#ifdef __xilinx__
__attribute__ ((reqd_work_group_size(128, 1, 1)))
#endif
kernel void dummy(global int * restrict s)
{
    s[get_global_id(0)] = get_global_id(0);
}
