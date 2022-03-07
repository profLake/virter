#!/bin/bash

if [[ -z $1 ]]; then
    echo "No make target"
    exit 1
fi


clear

source ~/.bashrc
#PROJECT=$PROJECT
#PROJECT=/Users/sceneste/reviews/mikaelag/T07D10-0/
#PROJECT=/Users/sceneste/reviews/eeveegod/T10D16-0/
#PROJECT=/Users/sceneste/reviews/luigiket/T10D16-0/
#PROJECT=/Users/sceneste/reviews/chillwav/T11D17-0/
#PROJECT=/Users/sceneste/reviews/backmeiz/T11D17-0/
cd ..
PROJECT=$(pwd)
WORK_DIR=$PROJECT/src/
bash ~/sandbox/rmgarbage.sh

curr_make=$1


echo "========================================================================"
echo "=================================CHECKS================================="
echo "========================================================================"

echo "PROJECT: $PROJECT"
echo "WORK_DIR: $WORK_DIR"
cd ~/sandbox/

bash ./_check-compile.sh $curr_make
bash ./check-cpplint.sh
bash ./check-cppcheck.sh
bash ./check-tests.sh


#leaks -atExit -- ./_check-tests.sh

#echo "----------------"
#echo "LEAKS CHECK DONE"
#echo "----------------"
