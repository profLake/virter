#!/bin/bash

cd ~/sandbox/

for program_full_name in $PROJECT/build/*; do
    program=$(basename $program_full_name)
    echo "====================================="
    echo "====================================="
    echo "########PROGRAM:$program"

    cd tests-data/
    
    split -p "[=]" "./tests-$program.txt" \
    \
    && for file_text in ./x*; do
        id=$(cat $file_text | grep -n "output:" | cut -d: -f1)
        input=$(sed -n "3,$((id - 1))p" $file_text)
        expect=$(sed -n "$((id + 1)),$ p;s/.$//" $file_text)
        output=$(echo $input | $PROJECT/build/$program)
    
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
    
        #echo -n "########LEAK: "
        #   (echo $input | leaks -atExit -- ~/sandbox/binaries/$program)\
        #   > /tmp/error.txt
        #if [[ -n $(cat /tmp/error.txt | grep LEAK) ]]; then
        #   echo "YES"
        #else
        #   echo "NO"
        #fi
    done

    rm ./x*
    cd ../
done

#for program_full_name in ./binaries/*; do
#    program=$(basename $program_full_name)
#    echo "====================================="
#    echo "====================================="
#    echo "########PROGRAM:$program"
#    
#    cd tests-data/
#    
#    split -p "[=]" "./tests-$program.txt"
#
#    for file_text in ./x*; do
#        id=$(cat $file_text | grep -n "output:" | cut -d: -f1)
#        input=$(sed -n "3,$((id - 1))p" $file_text)
#        expect=$(sed -n "$((id + 1)),$ p;s/.$//" $file_text)
#        output=$(echo $input | ~/sandbox/binaries/$program)
#    
#    
#        echo "########INPUT:"
#        echo "<$input>"
#
#        echo -n "########STATUS:"
#        if [[ $output == $expect ]]; then
#            echo "[ OK ]"
#        else
#            echo "[FAIL]"
#            echo "########OUTPUT:"
#            echo "<$output>"
#        fi
#    
#        #echo "id:$id"
#        #echo "expect:$expect"
#
#        echo -n "########LEAK: "
#        (echo $input | leaks -atExit -- ~/sandbox/binaries/$program)\
#            > /tmp/error.txt
#        if [[ -n $(cat /tmp/error.txt | grep LEAK) ]]; then
#            echo "YES"
#        else
#            echo "NO"
#        fi
#    done
#    rm ./x*
#
#    cd ../
#
#done


echo "----------------"
echo "TESTS CHECK DONE"
echo "----------------"











#if [[ "$PROJECT" == "/Users/sceneste/T06D08-0/" ]]; then
#    bash ../_check-test-8.sh
#fi
#if [[ $(basename "$PROJECT") == "T06D09-0" ]]; then
#    echo "$#%"
#    bash ../_check-test-9.sh
#fi

