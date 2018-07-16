#!/bin/bash
#weirdvars.sh :echo show some weirdvars

var="'(]\\{}\$\""	#maybe	(]\{}$"
echo $var
echo "$var"			#Doesnt make a difference

echo 
IFS='\'
echo $var			#(] {}$		where is \?
echo $var |od -t o1
echo "$var"			#(]\{}$

echo "$var" |od -t o1

exit 0
