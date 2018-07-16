#!/bin/bash
#broken-link.sh
#Page 85-86

#this is a pure shell scription to find out which file are broke-link and output their point file

#if there is no parameter transfer to scription,we use current directory
#otherwise,we use parameter as directory to search
############################
# '$#'  is the number of location parameter  '$@' is all location parameter

[ $# -eq 0 ] && directorys='pwd' || directorys=$@

#write a function 'linkchk' to check direction or file which is parameter transfer whethere is linked
#to judge these file or directory's beingness,then print file that they point
#if the elements transmited in included subdirectories,we put subdirectories in linkcheck function to deal with
#we archive recursion purpose.
###########################

linkchk () {
	for element in $1/*;do
	[ -h "$element" -a ! -e "$element" ]  && echo \"$element\"
	[ -d "$element" ] && linkchk $element
	#of course,'-h' use to test link symbol,and '-d' to directories
	done
}

#put every parameter to linkchk to deal
#check out whethere there is available directory,if not ,print error info and using info
###########################


for directory in $directorys;do
	if [ -d $directory ]
	then linkchk $directory
	else
		echo "$directory is not a directory."
		echo "Usage: $0 dir1 dir2 ..."	
	fi
done

exit 0


























exit 0
