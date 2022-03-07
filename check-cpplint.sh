#!/bin/bash

chmod 777 $PROJECT/materials/linters/CPPLINT.cfg
cp $PROJECT/materials/linters/CPPLINT.cfg $WORK_DIR/
chmod 777 $WORK_DIR/CPPLINT.cfg
for file in $(find $WORK_DIR -name '*.c' -or -name '*.h'); do
   python3 $PROJECT/materials/linters/cpplint.py --extensions=c $file
done
rm $WORK_DIR/CPPLINT.cfg
echo "----------------"
echo "CPPLINT CHECK DONE"
echo "----------------"
