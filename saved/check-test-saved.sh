#!/bin/bash

echo "========================="
echo "==========DAY 7?========="
echo "========================="

#./$program 1 0 && echo ""
#echo -n "echo \"100\" \t| ./1948: "; echo $(echo "100" | ./1948)
#echo -n "echo \"-4\" \t| ./1948: "; echo $(echo "-4" | ./1948)
#echo -n "echo \"115\" \t| ./1948: "; echo $(echo "115" | ./1948)
#echo -n "echo \"54\" \t| ./1948: "; echo $(echo "54" | ./1948)
#echo -n "echo \"-79\" \t| ./1948: "; echo $(echo "-79" | ./1948)
#echo -n "echo \"-79j\" \t| ./1948: "; echo $(echo "-79j" | ./1948)
#echo -n "echo \" \" \t| ./1948: "; echo $(echo " " | ./1948)
#echo -n "echo \"u32\" \t| ./1948: "; echo $(echo "u32" | ./1948)



#echo "./char_decode"
#echo -n "echo -n \"48 45 4C 4C 4F\"   | ./char_decode 1: "
#    ; echo $(echo "48 45 4C 4C 4F" | ./char_decode 1)
#echo -n "echo -n \"48454C4C4F\"   | ./char_decode 1: "
#    ; echo $(echo "48454C4C4F" | ./char_decode 1)
#echo -n "echo -n \"45 \"   | ./char_decode 1: "
#    ; echo $(echo "45 " | ./char_decode 1)
#echo -n "echo -n \"W O R L D\"   | ./char_decode 1: "
#    ; echo $(echo "W O R L D" | ./char_decode 0)
#echo -n "echo -n \"WORLD\"   | ./char_decode 1: "
#    ; echo $(echo "WORLD" | ./char_decode 0)
#echo -n "echo -n \"W \"   | ./char_decode 1: "
#    ; echo $(echo "W " | ./char_decode 0)
#echo -n "echo -n \" \"   | ./char_decode 1: "
#    ; echo $(echo " " | ./char_decode 0)
#echo -n "echo -n \" T\"   | ./char_decode 1: "
#    ; echo $(echo " " | ./char_decode 0)











PROGRAM=./search
leaks -atExit -- $PROGRAM
    ($PROGRAM <<'EOF'
        4
        1 2 3 4
        EOF)
    | grep LEAK
leaks -atExit -- $PROGRAM
    ($PROGRAM <<'EOF'
        -1
        1 2 3 4
        EOF)
    | grep LEAK
leaks -atExit -- $PROGRAM
    ($PROGRAM <<'EOF'
        4i
        1 2 3 4
        EOF)
    | grep LEAK
leaks -atExit -- $PROGRAM
    ($PROGRAM <<'EOF'
        8
        1 2 3 4 -15 88 5 0
        EOF)
    | grep LEAK
