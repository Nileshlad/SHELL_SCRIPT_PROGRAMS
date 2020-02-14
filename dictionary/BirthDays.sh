#!/bin/bash -x

#To dictionar a
declare -A birthDay
echo "${birthDay[@]}"
#VARIABLE
index=1
while [ $index -le 50 ]
do
	random=$((RANDOM%12+1))
	birthDay[$random]=$((birthDay[$random]+1))
		((index++))
done
#PRINT
echo "Individuals Having Birthdays in the Same Month."
echo "${birthDay[@]}"
