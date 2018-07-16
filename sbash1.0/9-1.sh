#!/bin/bash
#	$IFS deal with

output_args_one_per_line()
{
	for arg
	do echo "[$arg]"
	done
}

echo
echo	"IFS=\" \""
echo "-----------"
IFS=" "
var=" a b c "
output_args_one_per_line $var	#output_args_one_per_line `echo " a	b c	"`
#
#	[a]
#	[b]
#	[c]


echo
echo "IFS=:"
echo "--------"
IFS=:
var=":a::b:c:::"
output_args_one_per_line $var

exit 0
