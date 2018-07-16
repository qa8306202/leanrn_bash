#!/bin/bash
#time-out.sh



INTERVAL=5	#interavl time
timeout_read()
{
	timeout=$1
	varname=$2
	old_tty_settings=`stty -g`	#stty can read way,In the way man can read is `stty -a`
	stty -icanon min 0 time ${timeout}0	#0.1seconds every 
	eval read $varname
	stty "$old_tty_settings"
	
}

echo
echo "What is your name?Quick! "
timeout_read $INTERVAL your_name

echo
if [ ! -z "$your_name" ]
then
	echo "Your name is $your_name"
else
	echo "Time out"
fi

echo
exit 0

