#!/bin/bash -x

# TAKE USER INPUT
read -p "Enter the number: " number

# INITIALIZE POWER
power=1

# TO POWER OF 2 UNTILL IT BECOMES 256 
while [ $number -ne 0 ]
do
	power=$(( power * 2 ))
	if [ $power -le 256 ]
	then
		echo $power
	fi
	((--number))
done
