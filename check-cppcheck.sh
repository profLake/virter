#!/bin/bash


##
## check-cppcheck.sh <work_dir>
##


work_dir=$1


~/cppcheck/cppcheck --enable=all --suppress=missingIncludeSystem $work_dir/


echo "----------------"
echo "CPPCHECK CHECK DONE"
echo "----------------"
