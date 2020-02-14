#!/bin/bash

#TAKE DICTIONARIES VALUE AT ZERO
declare -A rollDie
	echo "${rollDie[@]}"
	result=1
while [ $(( rollDie[$result] )) -ne 10 ]
do
#TO RANDOM NUMBER
	result=$((RANDOM%6+1))
	rollDie[$result]=$((rollDie[$result]+1))
	echo "  "
	echo "${rollDie[@]}"
	echo "  "
done

#PRINT KEY
	echo "key" "${!rollDie[@]}"

#PRINT LENGTH
length=${#rollDie[@]}
	echo "length:"$length

#TO VARIABLE 
minimumValue=$((rollDie[1]))
maximumValue=0

for (( index=1; index<=length; index++ ))
do
	if [ $((rollDie[$index])) -gt  $maximumValue ]
	then
		maximum=$((rollDie[$index]))
	fi

	if [ $((rollDie[$index])) -lt  $minimumValue ]
	then
		minimum=$((rollDie[$index]))	
	fi
done

#TO PRINT 
echo "Minnimum Number" "$minimum"
echo "Maximum Number" "$maximum"
