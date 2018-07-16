#!/bin/bash

a=24
b=27

if [ "$a" -eq 24 ] && [ "$b" -eq 27 ]
then
	echo "Test #1 secceeds."
else
	echo "Test #1 fails."
fi


if [ "$a" -eq 98 ] || [ "$b" -eq 27 ]
then
	echo "Test #2 secceeds."
else
	echo "Test #2 fails."
fi


if [ "$a" -eq 24  -a  "$b" -eq 27 ]
then
	echo "Test #3 secceeds."
else
	echo "Test #3 fails."
fi



if [ "$a" -eq 8 -o "$b" -eq 27 ]           #if [[ "$a" -eq 8  -o  "$b" -eq 27 ]] this is wrong!!
then
	echo "Test #4 secceeds."
else
	echo "Test #4 fails."
fi



if [[ "$a" -eq 24 && "$b" -eq 27 ]]							#[[...]] can use &&   [] use -a

then
	echo "Test #A secceeds."
else
	echo "Test #A fails."
fi











a=rhino
b=crocodile
if [ "$a" = rhino ] && [ "$b" = crocodile ]
then
	echo "Test #5 secceeds."
else
	echo "Test #5 fails."
fi
exit 0


