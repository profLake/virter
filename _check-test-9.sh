#!/bin/bash


echo "========================="
echo "==========DAY 9=========="
echo "========================="

echo "-------------------------"
echo "PROGRAM:./sort"
echo "./sort; input: 4 3 9 0 1 2 100 2 7 -1";
    echo -ne "\t" $(echo "4 3 9 0 1 2 100 2 7 -1" | ./sort)
echo "./sort; input: -125 i 99 15";
    echo -e "\t" $(echo "-125 i 99 15" | ./sort)
echo "./sort; input: -125 0i 99 15";
    echo -e "\t" $(echo "-125 0i 99 15" | ./sort)

echo "-------------------------"
echo "PROGRAM:./key9part1"
echo "input: [10]    4 3 9 0 1 2 0 2 7 -1 to ./key9part1: "
    echo -e "\t" $(./key9part1 <<'EOF'
        10
        4 3 9 0 1 2 0 2 7 -1
        EOF)
echo "input: [10]    8 0 -14 to ./key9part1: "
    echo -e "\t" $(./key9part1 <<'EOF'
        10
        8 0 -14
        EOF)
echo "input: [3]    8 0 -14 to ./key9part1: "
    echo -e "\t" $(./key9part1 <<'EOF'
        3
        8 0 -14
        EOF)
echo "input: [15]    8 0 -14 1 1 1 2 2 2 5 to ./key9part1: "
    echo -e "\t" $(./key9part1 <<'EOF'
        10
        8 0 -14 1 1 1 2 2 2 5
        EOF)



echo "-------------------------"
echo "PROGRAM: ./cycle_shift"
echo "input:[10]    4 3 9 0 1 2 0 2 7 -1    [2] to ./cycle_shift: "
    echo -e "\t" $(./cycle_shift <<'EOF'
        10
        4 3 9 0 1 2 0 2 7 -1
        2
        EOF)
echo "input:[10]    8 0 -14 to ./cycle_shift: "
    echo -e "\t" $(./cycle_shift <<'EOF'
        10
        8 0 -14
        EOF)
echo "input:[3]    8 0 -14    [0] to ./cycle_shift: "
    echo -e "\t" $(./cycle_shift <<'EOF'
        3
        8 0 -14
        0
        EOF)
echo "input:[3]    8 0 -14    [2i] to ./cycle_shift: "
    echo -e "\t" $(./cycle_shift <<'EOF'
        3
        8 0 -14
        2i
        EOF)



echo "-------------------------"
echo "PROGRAM: ./key9part2"
echo "input:1 9 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1  _  2 9"
    echo -e "\t:" $(./key9part2 <<'EOF'
        1 9 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1
        2 9
        EOF)
echo "input:1 9i 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1  _  2 9"
    echo -e "\t:" $(./key9part2 <<'EOF'
        1 9i 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1
        2 9
        EOF)
echo "input:0 1 0 _  0 0 1"
    echo -e "\t:" $(./key9part2 <<'EOF'
        0 1 0
        0 0 1
        EOF)
echo "input:1 9 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1 _ "
    echo "      1 9 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1"
    echo -e "\t:" $(./key9part2 <<'EOF'
        1 9 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1
        1 9 4 4 6 7 4 4 0 7 3 7 0 9 5 5 1 6 1
        EOF)
echo "input:5 5 5 _ 5 5 5"
    echo -e "\t:" $(./key9part2 <<'EOF'
        5 5 5
        5 5 5
        EOF)

