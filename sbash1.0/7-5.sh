#!/bin/bash
a=4
b=5

#there "a" and "b" both can be regard as integer and string ,
#So,mathmatic cmp and string cmp usually confuse people
#because BASH variable is not strong type
echo

if [ "$a" -ne "$b" ]
then
	echo "$a is not equal to $b."
	echo "(arithmetic comparision)"
fi

echo

if [ "$a" != "$b" ]
then 
	echo "$a is not equal to $b."
	echo "(string comparision)"
	#	"4" != "5"
	#ASCII 52 != ASCII 53
fi
	
#this example "-ne" and "!=" is the same.

exit 0 
