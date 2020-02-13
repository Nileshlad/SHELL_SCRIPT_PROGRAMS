#!/bin/bash -x

# TO VARIABLE
limit=5
minimumValue=999
maximumValue=100

# FIND 3 DIGIT MINIMUM AND MAXIMUM NUMBER
while [ $limit -ne 0 ]
do
	randomCheck=$(( 100 + RANDOM % 900 ))
	echo $randomCheck
	if [ $randomCheck -gt $maxVal ]
	then
		 maximumValue=$randomCheck
	fi

	if [ $randomCheck -lt $minVal ]
	then
		 minimumValue=$randomCheck
	fi
	limit=$(( $limit - 1 ))
done

# PRINT MINIMUM AND MAXIMUM RANDOM NUMBER
echo maximumValue=$maximumValue
echo minimumValue=$minimumValue
