#!/bin/bash -x

# USER INPUT
read -p "Enter the Number: " number

# CHECK DIGIT NUMBER
if [ $number -eq 1 ]
then
	echo Unit
elif [ $number -eq 10 ]
then
	echo Ten
elif [ $number -eq 100 ]
then
	echo Hundread
elif [ $number -eq 1000 ]
then
	echo Thousand
else
	echo Enter numbers 1, 10, 100 or 1000 only 
fi
