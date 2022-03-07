#!/bin/bash


##
## check-compile.sh <work_dir> <make_target>
##



bash ~/sandbox/clean.sh

#for f in $WORK_DIR/*.c; do
#    gcc -Wall -Wextra -Werror $f -o ./binaries/$(basename ${f%.c})
#done



####cd $WORK_DIR/
cd $1
make $2


echo "----------------"
echo "COMPILATION DONE"
echo "----------------"



















#/*DAY 3*/
#gcc -Wall -Werror -Wextra $WORK_DIR/hello.c -o hello
#gcc -Wall -Werror -Wextra $WORK_DIR/named_hello.c -o named_hello
#gcc -Wall -Werror -Wextra $WORK_DIR/arithmetic.c -o arithemtic
#gcc -Wall -Werror -Wextra $WORK_DIR/max.c -o max
#gcc -Wall -Werror -Wextra $WORK_DIR/important_function.c -o ./important_function
#    gcc -Wall -Werror -Wextra $WORK_DIR/important_function_NEED_CHECK_AND_LINT.c -o important_function_NEED_CHECK_AND_LINT
#gcc -Wall -Werror -Wextra $WORK_DIR/float_compare.c -o float_compare
#gcc -Wall -Werror -Wextra $WORK_DIR/crack.c -o crack



#/*DAY 4*/
#gcc -Wall -Werror -Wextra $WORK_DIR/1948.c -o ./1948
#gcc -Wall -Werror -Wextra $WORK_DIR/char_decode.c -o ./char_decode

#/*DAY 4*/
#gcc -Wall -Werror -Wextra $WORK_DIR/1948.c -o ./1948

#/*DAY 6*/
#gcc -Wall -Werror -Wextra $WORK_DIR/pong.c -o ./pong

#/*DAY 8*/
#gcc -Wall -Werror -Wextra $WORK_DIR/maxmin.c -o ./maxmin
#gcc -Wall -Werror -Wextra $WORK_DIR/squaring.c -o ./squaring
#gcc -Wall -Werror -Wextra $WORK_DIR/stat.c -o ./stat
#gcc -Wall -Werror -Wextra $WORK_DIR/search.c -o ./search

#/*DAY 9*/
#gcc -Wall -Werror -Wextra $WORK_DIR/sort.c -o ./sort
#gcc -Wall -Werror -Wextra $WORK_DIR/key9part1.c -o ./key9part1
#gcc -Wall -Werror -Wextra $WORK_DIR/cycle_shift.c -o ./cycle_shift

#/*reviews*/
#gcc -Wall -Werror -Wextra $WORK_DIR/1948.c -o ./1948
#gcc -Wall -Werror -Wextra $WORK_DIR/char_decode.c -o ./char_decode
#gcc -Wall -Werror -Wextra $WORK_DIR/quest3.c -o ./quest3

