#!/bin/bash -x

# TO INPUT
read -p "Enter the Single Digit: " digit

# PRINT SINGLE DIGIT NUMBER IN WORDS
if [ $digit -eq 1 ]
then
	echo One
elif [ $digit -eq 2 ]
then
	echo Two
elif [ $digit -eq 3 ]
then
	echo Three
elif [ $digit -eq 4 ]
then
	echo Four
elif [ $digit -eq 5 ]
then
	echo Five
elif [ $digit -eq 6 ]
then
	echo Six
elif [ $digit -eq 7 ]
then
	echo Seven
elif [ $digit -eq 8 ]
then
	echo Eight
elif [ $digit -eq 9 ]
then
	echo Nine
elif [ $digit -eq 0 ]
then
	echo Zero
else
	echo Enter Single Digit.
fi
