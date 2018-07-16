#!/bin/bash
ARGS=2
E_BADARGS=65
#parameter check
#----------------------------------------------
if [ $# -ne $ARGS ]
then
echo "Usage: `basename $0` number1 nubmer2 "
exit $E_BADARGS
fi
#----------------------------------------------

gcd(){
	divisor=$1
	dividend=$2
	remainder=1
	until [ $remainder -eq 0 ]
	do
	let "remainder=$dividend%$divisor"
	dividend=$divisor
	divisor=$remainder
	done

}
 gcd $1 $2

	echo "the gcd of $1 and $2 is $dividend."
exit 0

