#!/bin/bash -x

# USER INPUT 
read -p "Enter the number: " number

# VARIABLE
count=0

# TO PRINT NUMBER IS PRIME OR NOT PRIME
for (( index=1; index<=$number; index++ ))
do
	if [ $(( number % index )) -eq 0 ]
	then
		count=$(( count + 1 ))
	fi
done

if [ $count -eq 2 ]
then
	echo $number is Prime Number
else
	echo $number is not prime Number
fi
