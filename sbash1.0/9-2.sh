#!/bin/bash
#timed0-input.sh

#TIMEOUT=3
TIMELIMIT=2

PrintAnswer()
{
	if [ "$answer" = TIMEOUT ]
	then
		echo "$answer"
	else
		echo "Your favorite vegeteble is $answer."
	kill  9 $!	#kill TimeOn function

	fi
}

TimerOn()
{
	sleep $TIMELIMIT && kill $$ &
	#wait 3 seconds then sending a signal 
}
Int14Vector()
{
	answer="TIMEOUT"
	PrintAnswer
	exit 14

}
trap Int14Vector 15 
echo "What is your favorite vegetable "
TimerOn
read answer
PrintAnswer

exit 0
