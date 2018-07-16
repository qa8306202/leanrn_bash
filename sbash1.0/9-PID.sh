#!/bin/bash
filename=$0
LOG=${filename/.sh/.log}	#LOG=${$0/.sh/.log} is error

COMMAND1="sleep 100"
echo "logging PIDs background commands for script: $0" >> "$LOG"	# ">>" means  add to $LOG
echo >> "$LOG"	

echo -n "PID OF \"$COMMAND1\": " >> "$LOG"
${COMMAND1}	&
echo $!	>> "$LOG"
echo 
echo -n "PID of this script: " >> "$LOG"
echo $$ >> "$LOG"

#possibly_hanging_jog & { sleep ${TIMEOUT}; eval 'kill -9 $!' &> /dev/null; }








exit 0
