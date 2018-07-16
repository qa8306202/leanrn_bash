#!/bin/bash
#mathmatic test
#using (())can calculate and test the result of mathmatic expression 
#the state of exit will be opposite with [ ... ]

(( 0 ))
echo "Exit status of \"(( 0 ))\"is $?."		#1

(( 1 ))
echo "Exit status of \"(( 1 ))\"is $?."		#0
(( 5 > 4 ))									#true
echo "Exit status of \"(( 5 > 4 ))\"is $?."	#0
(( 5 > 9 ))									#false
echo "Exit status of \"(( 5 > 9 ))\"is $?."	#1
(( 5 - 5 ))
echo "Exit status of \"(( 5 - 9 ))\"is $?."	#1
(( 5 / 4 ))
echo "Exit status of \"(( 5 / 4 ))\"is $?."	#0
(( 1 / 2 ))
echo "Exit status of \"(( 1 / 2 ))\"is $?."	#1
(( 1 / 0 )) 2>/dev/null
echo "Exit status of \"(( 1 / 0 ))\"is $?."	#1

#Q:what function does "2>/dev/null" do ?

#A:ignore error info hint
#"2>"represent redirect error hint,
# 2 is file discribution
# > is redirction operate
# /dev/null  is a specitial file




exit 0
