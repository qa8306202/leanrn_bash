#!/bin/bash
a=23
echo $a	   	#23
b=$a		
echo $b		#23
#the simpplest assingment

a='echo hello!'	
echo $a			#echo hello!

a='ls -l'
echo $a			#ls -l
echo 
echo "$a"		#ls -l
#echo "$($a)"	#command ls -l
echo "'$a'"		#ls -l
echo
exit 0
