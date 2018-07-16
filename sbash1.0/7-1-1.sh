#!/bin/bash
a=

if [ -n "$a" ]
then 
echo "-n\"\$a\"is OK"
else
echo "-n\"\$a\"is False"
fi
if [ "$a" ]
then 
echo "\"\$a\" is OK"
else
echo "\"\$a\" is False"
fi
echo
if [ -n $a ]
then 
echo "-n\$a is OK"
else
echo "-n\$a is False"
fi
echo 
if [ $a ]
then 
echo "\$a is OK"
else
echo "\$a is False"
fi










exit 0
