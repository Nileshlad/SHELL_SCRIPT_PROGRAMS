#!/bin/bash -x

#TO RANDOM NUMBER
randomNumber=$(( RANDOM%2 ))

#VARIABLE
isFlipCoin=0

#TO CHECK HEAD OR TAIL
if [ $randomNumber -eq $isFlipCoin ]
then
	echo "Head"
else
	echo "Tail"
fi
