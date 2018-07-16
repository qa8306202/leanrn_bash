#!/bin/bash
#str-test.sh	:chk null string and Not cited string
#+  but not strings and sealing wax,not to mention cabbages and kings ...

#using [ ... ]
#if strings do not initialize,it's value dosent cite
#This state is called "null"(attention:differ from 0)
string1=$1
if [ -n $string1 ]
then
	echo "String \"$string1\"is not null."
else
	echo "String \"$string1\" is null."
fi

echo

if [ -n "$string1" ]
then
	echo "String \"$string1\"is not null."
else
	echo "String \"$string1\" is null."
fi
string1="a = b"
echo
if [ $string1 ]
then
	echo "String \"$string1\"is not null."
else
	echo "String \"$string1\" is null."
fi
