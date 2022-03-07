/*Copyright 1989 Free Software Foundation*/
#include <stdio.h>
#include <math.h>

#define ERR_MSG "n/a"

/*
 * args:
 *  n --- if it contains -1, user himself must input desired amount
 */
int* get_ints_secured(int* p_buff, int* n);

int main() {
    int result = 0;

    int nums[10];
    int n = 10;

    if (get_ints_secured(nums, &n) == NULL) {
        error_msg("n/a");
        result = 1;
    }

    return result;
}
void error_msg(char* msg) {
    printf("%s", msg);
}
