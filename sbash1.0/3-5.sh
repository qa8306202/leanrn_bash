#!/bin/bash
#this is an error scription
#The shell does the brace expansion.The command itself acts upon the result of the expansion
#When code in a big brace of a pipe,hte code maybe run in the kid shell
:<<'
ls | {read firstline;read secondline}
#error:the output of "ls" won't pass to code block
echo "First line is $firstline;second line is $secondline" #wont work

'
:<<'block
THIS IS A TEST FOR 
EXPLANTION
WORD
'block

exit 0
