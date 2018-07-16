#!/bin/bash
#escaped.sh

echo ; echo

echo "\v\v\v\v"
echo "==================="
echo "VERTICAL TABS"
echo -e "\v\v\v\v"
echo "==================="

echo "QUOTATION MARK"
echo -e "\042"		#print
echo "==================="

#if using $ '\X' ,-e option isnt need
echo;	echo	"NEWLINE AND BEEF"
echo $'-n'	#newline
echo $'-a'	#warning
echo "==================="
echo "QUOTATION MARK"
#ATTANTION:we can use $ '\nnn 'struction,and \nnn\ is otcal
echo $'\t \042 \t'
echo "==================="
quote=$'\042'
echo "$quote This is a quote string,$quote and this lies outside the quotes."

echo
ABC=$'\101\102\103\010'		#101 102 103 is octal ABC
echo $ABC
echo;echo

escape=$'\033'		#033 is esc	(octal)

echo "\"escape\" echoes as $escape"	#none of var output
echo ;echo




exit 0
