#!/bin/bash
#arglist.sh

E_BADARGS=65

if [ ! -n "$1" ]
then 
	echo "Usage:`basename $0` argement1 argement2 etc."
	exit $E_BADARGS
fi

echo
index=1
echo "Listing args with \"\$*\":"
for arg in "$*"		#if "$*" not cite "",it will not work out
do
	echo	"Arg #$index = $arg"
	let "index+=1"
done
echo "Entire arg list seen as single word."

echo 
index=1

echo "Listing args wiht \"\$@\":"
for arg in "$@"
do
	echo "Arg #$index= $arg"
	let "index+=1"
done
echo "arg list seen as separate words."

index=1
echo "Listing args wiht \$*:"
for arg in $*
do
	echo "Arg #$index=$arg"
let "index+=1"
done

echo "arg list seen as separate words."


exit 0
