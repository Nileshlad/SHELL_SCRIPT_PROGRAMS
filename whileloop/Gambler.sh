#!/bin/bash -x

# VARIABLE
money=100
bet=0
win=0

#TO CALCULATE BET COUNT AND WIN COUNT
while [ $money -gt 0 -a $money -lt 200 ]
do
	((bet++))
	random=$(( RANDOM % 2 ))
	if [ $random -eq 1 ]
	then
		((win++))
		money=$(( money + 1 ))
	else
		money=$(( money - 1 ))
	fi
done

#TO PRINT
echo "Bet: " $bet
echo "Win: " $win
echo "Money: " $money
