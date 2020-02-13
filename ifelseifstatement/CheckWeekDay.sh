#!/bin/bash -x

#USER INPUT
read  -p "Enter the number  1 to 7 : " number

# DISPLAY WEEK DAYS BY READING NUMBER
if [ $number -eq 1 ]
then
	echo Monday
elif [ $number -eq 2 ]
then
	echo Tuesday
elif [ $number -eq 3 ]
then
	echo wednesday
elif [ $number -eq 4 ]
then
	echo Thursday
elif [ $number -eq 5 ]
then
	echo Friday
elif [ $number -eq 6 ]
then
	echo Saturday
elif [ $number -eq 7 ]
then
	echo Sunday
else
	echo Enter the valid number between 1 to 7.
fi
