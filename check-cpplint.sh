#!/bin/bash


##
## check-cpplint.sh <project>
##


project=$1
work_dir=$project/src/



chmod 777 $project/materials/linters/CPPLINT.cfg
cp $project/materials/linters/CPPLINT.cfg $work_dir/
chmod 777 $work_dir/CPPLINT.cfg

for file in $(find $work_dir -name '*.c' -or -name '*.h'); do
   python3 $project/materials/linters/cpplint.py --extensions=c $file
done

rm $work_dir/CPPLINT.cfg



echo "----------------"
echo "CPPLINT CHECK DONE"
echo "----------------"
