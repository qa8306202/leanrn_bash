#!/bin/bash
#variale assignment and substitute

a=375
hello=$a
#------------------------------------------------------------------------------
#ATTENTION:when assigning,there is none Space before and after '='
#if VAR =value
#
#scription will try to run "VAR" command,with "=value" parameter

#if VAR= value
#
#scription will try run a "value" command,with a ""enviroment parameter"VAR"
#-----------------------------------------------------------------------------

echo hello 			#hello
echo $hello			#375

echo ${hello}		#375

echo "$hello"		#375
echo '$hello'		#hello

echo "${hello}"		#375

echo "$hello.tar"	#375.tar

echo "${hello}.tar"	#375.tar
echo ${hello}.tar	#375.tar

echo


hello="A B C   D"
echo $hello			#A B C D 
echo "$hello"		#A B C  D

hello= 				#hello set null
echo "\$hello (null value) = $hello"
#Although variable set as null,it is different from unset one variable
#unset variable means variable's value is null not 0!
#but unset a
#a+=5(there is no space,echo a=5)

#---------------------------------------------------------------------
#we can set mutltple variables in one line
var1=21 var2=33 var3=$V3
echo
echo	"var1=$var1	var2=$var2	var3=$var3" 
#---------------------------------------------------------------------

echo;	echo
numbers="one two three"
#If there is whitespace embeded within a variable,we must add cite
other_numbers="1 2 3"
echo "number=$number"
echo "other_number=$other_number"
#OR we can use other way:escape(transfer) whitespace
mixed_bag=2\ ---\ Whatever
echo "$mixed_bag"	#2 --- Whatever
echo ; echo

uninitialized_variable=23
echo "NO1:uninitialized_variable=$uninitialized_variable"
unset uninitialized_variable
echo "NO2:uninitialized_variable=$uninitialized_variable"
