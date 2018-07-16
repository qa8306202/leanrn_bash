#!/bin/bash
set -- "First one" "second" "third:one" "" "Fifth: :one"

echo "First one" "second" "third:one" "" "Fifth: :one"

echo

echo 'IFS unchanged,using "$*":'

c=0
for i in "$*"
do echo "$((c+=1)):[$i]"	#(()) is mathmetic operation but "" can use $

done
echo "---"



echo 'IFS unchanged,using $*'
c=0
for i in $*
do echo "$((c+=1)):[$i]"
done
echo ---


echo 'IFS unchanged,using $@'
c=0
for i in $@
do echo "$((c+=1)):[$i]"
done 
echo ---

echo 'IFS=":",using "$*"'
old_IFS=$IFS
IFS=":"
c=0
for i in "$*"
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---


echo 'IFS=":",using $*'
old_IFS=$IFS
IFS=":"
c=0
for i in $*
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---
var="$*"
echo 'IFS=":",using "$var"(var="$*")'
old_IFS=$IFS
IFS=":"
c=0
for i in "$var"
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---

var="$*"
echo 'IFS=":",using $var(var="$*")'
old_IFS=$IFS
IFS=":"
c=0
for i in $var
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---

var="$@"
echo 'IFS=":",using "$var"(var="$@")'
old_IFS=$IFS
IFS=":"
c=0
for i in "$var"
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---

var="$@"
echo 'IFS=":",using $var(var="$@")'
old_IFS=$IFS
IFS=":"
c=0
for i in $var
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---

echo 'IFS=":",using $@'
old_IFS=$IFS
IFS=":"
c=0
for i in $@
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---






echo 'IFS=":",using "$@"'
old_IFS=$IFS
IFS=":"
c=0
for i in "$@"
do echo "$((c+=1)):[$i]"
done 
IFS=$old_IFS
echo ---


exit 0
