#!/bin/bash

#TAKE DICTIONARIES VALUE AT ZERO
declare -A a
	echo "${a[@]}"
	result=1
while [ $(( a[$result] )) -ne 10 ]
do
#TO RANDOM NUMBER
	result=$((RANDOM%6+1))
	a[$result]=$((a[$result]+1))
	echo "  "
	echo "${a[@]}"
	echo "  "
done

#PRINT KEY
	echo "key" "${!a[@]}"

#PRINT LENGTH
length=${#a[@]}
	echo "length:"$length

#TO VARIABLE 
minimumValue=$((a[1]))
maximumValue=0

for (( index=1; index<=length; index++ ))
do
	if [ $((a[$index])) -gt  $maximumValue ]
	then
		maximum=$((a[$index]))
	fi

	if [ $((a[$index])) -lt  $minimumValue ]
	then
		minimum=$((a[$index]))	
	fi
done

#TO PRINT 
echo "Minnimum Number" "$minimum"
echo "Maximum Number" "$maximum"
