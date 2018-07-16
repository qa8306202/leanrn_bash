#!/bin/bash
#numbers.sh
#decimal: default
let "dec = 32"
echo "decimal numnber = $dec"	#32
#not special

#---------------------------------------
#octal:with 0 begin

let "oct = 032 "
echo "octal number = $oct"	   #26

#---------------------------------------


#---------------------------------------
#hexadecimal:with 0x OR 0X begin

let "hex = 0x32"
echo "gexadecimal number = $hex"	#50

#---------------------------------------



#others : BASE#NUMBER
#BASE between 2 and 64

let "bin = 2#111100111001101"
echo "binary number = $bin"		#31181

let "b32= 32#77"
echo "base-32 number= $b32"		#231

let "b64=64#@_"
echo	"base-64 number =$b64"	#4031

#10numbers + 26 lowercase + 26 capital letter + @ + _

echo
echo $((36#zz))	$((2#10101010))	$((16#AF16))	$((53#laA))
		#	1295	170	44822	3375












let "bad_oct=081"
echo "$bad_oct"
