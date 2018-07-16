#!/bin/bash
#trick:
#if you cant make sure how one specific condition should be judge
#+you can use if-test structure

echo

echo "Testing \"0\""
if [ 0 ]
then
	echo "0 is true."	#this
else
	echo "0 is false."
fi
echo
echo "Testing \"1\""
if [ 1 ]
then
	echo "1 is true."	#this
else
	echo "1 is false."
fi

echo
echo "Testing \"-1\""
if [ -1 ]
then
	echo "-1 is true."	#this
else
	echo "-1 is false."
fi
echo
echo "Testing \"NULL\""
if [  ]		#NULL is tab ,space
then
	echo "NULL is true."	
else
	echo "NULL is false."	#this
fi
echo

echo "Testing \"xyz\""
if [ xyz ]
then
	echo "xyz is true."	#this
else
	echo "xyz is false."
fi

echo

echo "Testing \"\$xyz\""		
if [ $xyz ]
then
	echo "uninitialized variable is true."	
else
	echo "uninitialized variable is false."	#This
fi

xyz= 	#initial,but xyz assigns null,testing by od  NULL is 040,if there is "",if not there is not any binary system numbers

echo

echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ]	#if [ -n string ] string length >0 return true
#if [ $xyz ]
then
	echo "Null variable is true."	#this
else
	echo "$xyz(\$xyz) is false."
fi


#when does "false" is true?
echo "Testing \"false\""
if [ "false" ]
then echo "\"false\" is true."	#this
else echo "\"false\" is false."
fi

echo
echo "Testing \"\$false\""
if [ "$false" ]
then echo "\"\$false\" is true."	
else echo "\"\$false\" is false."	#this
fi

echo "Testing \$false"
if [ $false ]
then echo "\$false is true."	
else echo "\$false is false."	#this
fi


echo




































echo
exit 0
