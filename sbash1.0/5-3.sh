#!/bin/bash
#This is my test
var="a b     c d"
echo $var.tar  fas 			???

echo "$var.tar  fas 			???"		#$var can be recognize 
echo "$var1.tar  fas 			???"		#$var will be regade as $var1 ,so it is space
echo "$var.tar" "$var" "$var1" "var"
echo ; echo
echo $var.tar
echo "$var.tar"


echo
var="'(]\{}\$\""
IFS='\'
echo $var
echo "$var"
echo 
exit 0
