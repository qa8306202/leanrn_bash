#!/bin/bash
# int-or-string.sh
#variables in bash  all dons not dostinguish the type
a=2334
let "a +=1"	#int   let a+=1  ==  let "a += 1"
echo "a=$a "
echo 


b=${a/23/BB}	#get '23' into 'BB'  2335 --> BB35
echo "b=$b"
declare -i b	#declare have no use
echo "b=$b "


let "b += 1"	#BB35 + 1 =
echo "b=$b"		#b=1
echo

c=BB34
echo "c=$c"		#c=BB34
d=${c/BB/23}	#d=2334
#d='c/BB/23/'	#this will output string
echo "d = $d "	
let "d += 1"	#2334+1=2335
echo "d = $d"
echo

#how about null
e=""
echo "e = $e"	#e=
let "e+=1"	
echo "e = $e"	#e=1
echo	

#without declare
echo "f = $f"	#f=
let "f += 1"
echo "f = $f"	#f=1
echo


exit 0


































