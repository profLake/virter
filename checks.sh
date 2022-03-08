#!/bin/bash


##
## start-check.sh <project> <make_target>
##


if [[ -z $1 ]]; then
    echo "No make target"
    exit 1
fi
source ~/.bashrc
project=$1
work_dir=$project/src/
make_target=$2



clear
echo "========================================================================"
echo "=================================CHECKS================================="
echo "========================================================================"

echo "PROJECT: $project"
echo "WORK_DIR: $work_dir"

cd ~/sandbox/
bash ./check-compile.sh $work_dir $make_target
bash ./check-cpplint.sh $project
bash ./check-cppcheck.sh $work_dir
bash ./check-tests.sh $project
cd $project
