#!/bin/bash


echo "========================="
echo "==========DAY 10========="
echo "========================="

echo "-------------------------"
echo "PROGRAM:./sort"k

cd tests-data

split -p "[=]" ./tests-9-sort.txt
for file_text in ./x*; do
    id=$(cat $file_text | grep -n "output:" | cut -d: -f1)
    input=$(sed -n "3,$((id - 1))p" $file_text)
    expect=$(sed -n "$((id + 1)),$ p" $file_text)
    output=$(echo $input | ~/sandbox/binaries/sort)


    if [[ $output == $expect ]]; then
        echo "[ OK ]"
    else
        echo "[FAIL]"
    fi

    echo -e ">>>input:\n$input"
    #echo "id:$id"
    #echo "expect:$expect"
    #echo "output:$output"
done
rm ./x*
