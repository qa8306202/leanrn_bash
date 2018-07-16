#!/bin/bash
a=879
echo "the value of \"a\" is $a"

#use 'let' assignment
let a=16+5
echo "the value of \"a\" is $a"

echo 
#assignment in for loop
for a in 7 8 9 11
do 
	echo -n "$a "
done

echo;echo
#use 'read' command to assignment
echo -n "Enter \"a\" "
read a #== in C,scanf("%d",&a);
echo "The value of \"a\" is now $a."

echo
exit 0





































