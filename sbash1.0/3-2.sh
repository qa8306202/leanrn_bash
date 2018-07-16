#!/bin/bash
# deb-check.sh
#this scrpit is aimed at decribtion list and make sure

SUCCESS=0
E_NOARGS=65
if [ -z "$1"]
then
	echo "Usage: 'basename $0 ' deb-file"
	exit $E_NOARGS
fi

{
	echo
	echo "Archive Description:"
	dpkg -l $1
	echo "Archive Listing:"
	dpkg -c $1
	echo
	dpkg -i	--test $1	#make sure whether rpm can be installed
	if ["$?" -eq $SUCCESS]
	then
		echo "$1 can be installed"
	else
		echo "$1 cannot be installed"
	fi
	echo

}> "$1.test"

echo "Results of rpm test in file $1.test"

exit 0
