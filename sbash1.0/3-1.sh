#!/bin/bash
#read from/etc/fstab
File=/etc/fstab

{
read line1
read line2
} < $File
echo "First line in $File is :"
echo "$line1"
echo
echo "Second line in $File is :"
echo "$line2"

:<<!
awk -F /# '{print $1,$4}' $File
!
exit 0
