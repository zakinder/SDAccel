
#define BLOCK_SIZE 0x800
#define STRESS_COUNT 0x20000
#define BLOCK_SIZE_16 (BLOCK_SIZE/16)

__attribute__ ((reqd_work_group_size(1, 1, 1)))
kernel void migbw(global int16 *restrict s1,
                  global const int16 *s2)
{
    local int16 buffer0[BLOCK_SIZE_16];
    for (int i = 0; i < STRESS_COUNT; i++) {
//        printf("Iter = %d\n", i);
        event_t e = async_work_group_copy(buffer0, &s2[BLOCK_SIZE_16 * i], BLOCK_SIZE_16, 0);
        wait_group_events(1, &e);
        e = async_work_group_copy(&s1[BLOCK_SIZE_16 * i], buffer0, BLOCK_SIZE_16, 0);
        wait_group_events(1, &e);
    }
}
