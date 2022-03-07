#!/bin/bash


##
## check-tests.sh <project>
##


project=$1
project_name=$(basename $project)
work_dir=$project/src/
dir_saved=$(pwd)



cd ~/sandbox/
for program in $project/build/*; do
    program_name=$(basename $program)
    echo "====================================="
    echo "====================================="
    echo "########PROGRAM:$program"

    cd tests-data/$project_name/
    
    split -p "[=]" "./tests-$program_name.txt" \
    \
    && for file_text in ./x*; do
        id=$(cat $file_text | grep -n "output:" | cut -d: -f1)
        input=$(sed -n "3,$((id - 1))p" $file_text)
        expect=$(sed -n "$((id + 1)),$ p;s/.$//" $file_text)
        output=$(echo $input | $project/build/$program_name)
    

        echo "########INPUT:"
        echo "<$input>"

        echo -n "########STATUS:"
        if [[ $output == $expect ]]; then
            echo "[ OK ]"
        else
            echo "[FAIL]"
            echo "########OUTPUT:"
            echo "<$output>"
        fi
    

        echo -n "########LEAK: "
            (echo $input | leaks -atExit -- $program)\
                > /tmp/error.txt
        if [[ -n $(cat /tmp/error.txt | grep LEAK) ]]; then
           echo "YES"
        else
           echo "NO"
        fi
    done

    rm ./x*
done
cd $dir_saved



echo "----------------"
echo "TESTS CHECK DONE"
echo "----------------"
