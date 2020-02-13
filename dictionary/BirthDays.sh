#!/bin/bash -x

#To dictionar a
declare -A a
echo "${a[@]}"
#VARIABLE
i=1
while [ $i -le 50 ]
do
	random=$((RANDOM%12+1))
	a[$random]=$((a[$random]+1))
		((i++))
done
#PRINT
echo "Individuals Having Birthdays in the Same Month."
echo "${a[@]}"
