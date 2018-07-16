#!/bin/bash
echo -n "What is your name?"
read name

echo "Your name is $name"
stty erase '#'

echo -n "What is your name ?"
read name
echo "Your name is $name"

##WARNING:even you exit this script ,key value still keep this setting.
##You should use " stty erase '^?'      "recover it 
