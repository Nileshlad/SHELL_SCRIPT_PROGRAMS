#!/bin/bash -x

# VARIABLE
head=1
headCounter=0
tailCounter=0

# TO COUNT OF HEADS AND TAILS
while [ $headCounter -le 10 -a $tailCounter -le 10 ]
do
	flipCheck=$(( RANDOM % 2 ))
	case $flipCheck in
		$head)
			((headCounter++))
		;;
		*)
			((tailCounter++))
		;;
	esac
done

# TO CHECK FLIP COIN WINNER
if [ $headCounter -eq 11 ]
then
	echo Head Wins
elif [ $tailCounter -eq 11 ]
then
	echo Tail Wins
else
	echo Tie
fi
