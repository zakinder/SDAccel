
__attribute__ ((reqd_work_group_size(1, 1, 1)))
kernel void simple(global int *restrict s1,
                   global const int *s2,
                   int foo)
{
    const int id = get_global_id(0);
    int val = s2[id] + id * foo;
    printf("KERNEL[id=%d]: foo=%d, s2[%d]=%d, s1[%d]=%d\n", id, foo, id, s2[id], id, val);
    s1[id] = val;
}
