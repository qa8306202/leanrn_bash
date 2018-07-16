#!/bin/bash

E_WRONG_DIRECTORY=73
clear	#clear windows

TargetDirectory=/home/ssozh/projects/GreatAmericanNovel

cd $TargetDirectory
echo "Deleting stale file in $TargetDirectory."

if [ "$PWD" !="$TargetDirectory" ]
then
	echo "Wrong directory!"
	echo "In $PWD,rather than $TargetDirectory!"
	echo "Bailing out!"
	exit $E_WRONG_DIRETORY
fi

rm -rf *

