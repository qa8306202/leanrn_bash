#!/bin/bash
:<<'
true # "true" is a build-in command
echo "exit statue of \" true \" = $? "	  #	0
! true	
echo "exit statue of \"! true \" = $?"	  #	1
'
true
!true
#ATTENTION:there is a space between ! and true
#'!true" will lead "command not found" error
#if beginning with "!",Mechanism of history will be started by bash

exit 0

