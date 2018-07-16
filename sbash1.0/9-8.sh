#!/bin/bash
#if $IFS is setted , $IFS=" "
#"$*" and "$@"will not show located parameter as respection

mecho() 	# print located parameter
{
echo "$1,$2,$3";
}


IFS=" "
set a b c
mecho "$*"
mecho $*

mecho "$@"
mecho $@

exit 0
