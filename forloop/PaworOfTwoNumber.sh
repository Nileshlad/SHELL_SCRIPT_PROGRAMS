#!/bin/bash -x

# VARIABLE
power=1

# TO CALCULATE POWER OF 2
for (( index=1; index<=$1; index++ ))
do
	power=$(( power * 2 ))
	echo $power
done
