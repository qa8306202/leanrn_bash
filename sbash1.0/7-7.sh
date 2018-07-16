#!/bin/bash
#zmore

#use 'more' to look at gzip-file

NOARGS=65
NOTFOUND=66
NOTGZIP=67

if [ $# -eq 0 ] # not the same as if [ -z "$1" ] because zmore "" arg2 arg3 
then
	echo "Usage:`basename $0` filename " >&2
	#error info transmit to stderr
	exit $NOARGS
	#return 65 as error code
fi

filename=$1
if [ ! -f "$filename" ]	#using "" is a good habit~,maybe $filename=null
then
	echo "File $filename not found!" >&2
	exit $NOTFOUND
fi

if [ ${filename##*.} != "gz" ]
	#${string##substring} this is a string operate to delete the longest match $substring .
	#the same as ${string%%substring}

then
	echo "File $1 is not a gizpped file !"
	exit $NOTGIZP
fi


zcat $1 | more


exit $?	#put pipe return state as return


