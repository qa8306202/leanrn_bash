#!/bin/bash
#gcd.sh 

#---------------------------------------------------------------
#parameter check
ARGS=2
E_BADARGS=65
if [ $# -ne $ARGS ]
then
	echo "Usage:`basename $0` first-number second number."
	exit $E_BADARGS
fi
#---------------------------------------------------------------

gcd()
{
	dividend=$1
	divisor=$2
	reminder=1
	until [ "$reminder" -eq 0 ]
	do
	let " reminder = $dividend % $divisor "
	dividend=$divisor
	divisor=$reminder
	done
}

gcd $1 $2
echo 
echo "GDC of $1 and $2 = $dividend"
echo

exit 0
