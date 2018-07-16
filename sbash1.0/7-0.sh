#!/bin/bash
if grep -q bash 4-1.sh	#if grep -q key words filename 
then echo "File contains at least one occurence of Bash."
fi

if cmp 4-1.sh 4-2.sh &> /dev/null	#cmp file1 and file2 .forbid output
then echo "Files a and b are identical."
else echo "filesa and b differ."
fi
echo ;echo


word=Linux
letter_sequence=inu
if echo "$word" |grep -q "$letter_sequence"
then
	echo "$letter_sequence found in $word"
else
	echo "$letter_sequence not found int $word"
fi

a=4-1.sh
b=4-2.sh
echo ;echo
if echo "Next *if* is part of the comparison for the first *if*."
	if [[ $comparison = "integer" ]]
		then(( a < b ))
	else
		[[ $a < $b ]]
	fi
then
	echo '$a is less than $b'
fi
exit 0
