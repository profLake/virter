#!/bin/bash


#cd ~/sandbox/
#echo "PROJECT: $PROJECT"
#echo "WORK_DIR: $WORK_DIR"


~/cppcheck/cppcheck --enable=all --suppress=missingIncludeSystem $WORK_DIR/
echo "----------------"
echo "CPPCHECK CHECK DONE"
echo "----------------"
