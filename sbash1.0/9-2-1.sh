#!/bin/bash

TIMELIMIT=3

TimerOn()
{
	sleep $TIMELIMIT && kill $$ &
}
PrintAnswer()
{
	if [ "$answer" = "TIMEOUT" ]
	then
		echo "$answer"
	else
		echo "Your favorite vegeteable is $answer"
		kill $!
	fi

}
Int15Vector()
{
	answer="TIMEOUT"
	PrintAnswer
	exit 15
}














trap Int15Vector 15

echo "What is your favorete vegetable?"
TimerOn
read answer
PrintAnswer

exit 0
