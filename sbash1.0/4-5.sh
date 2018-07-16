#!/bin/bash
#as an example,we will call 10 params eg:
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10
echo
echo "The name of this script is \"$0\"."
#add ./ as the current direction
echo "The name of this script is \" `basename $0` \"."	#there is ` not '

#basename /home/ssozh/study/sbash/4-5.sh  #this is OK to print 4-5.sh
#delete route name and leave filename,(see 'basename'

echo

if [ -n "$1" ]          #there is a space before -n,there is a space after "$1"
then echo "Parameter #1 is $1"
fi
if [ -n "$2" ]
then echo "Parameter #2 is $2"
fi

if [ -n "$3" ]
then echo "Parameter #1 is $3"
fi

if [ -n "${10}" ]
then echo "Parameter #10 is ${10}"
fi


echo "------------------------------------------------------"
echo "ALL the command-line parameters are: "$*" "

if [ $# -lt "$MINPARAMS" ]   #I dont understand this sentences
then
	echo
	echo "This script needs at least $MINPARAMS command-line arguments!"
fi
echo






exit 0
