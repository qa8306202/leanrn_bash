#!/bin/bash
#using 10 ways to counte to 11

n=1;echo -n "$n "
let "n = n + 1 "  #let "n += 1 " also is right,and n= $n + 1
echo -n "$n "

: $((n =$n + 1))				  #n=$((n + 1)),interge function and assign result to variable
# ":" is necessary,otherwise 
#Bash will try to"$((n = $n + 1 ))"explain as a command
echo -n "$n "

((n=$n + 1 ))
echo -n "$n "

: $[n = n + 1 ]
echo -n "$n "

let "n++"
echo -n "$n "

((n++))

echo -n "$n "

: $((n++))

echo -n "$n "

: $[ n++ ]


echo -n "$n "
a=9223372036854775807
echo "a=$a"
let "a+=1"
echo "a=$a"
let "a+=1"
echo "a=$a"
let "a+=1"
echo "a=$a"
echo
exit 0


































