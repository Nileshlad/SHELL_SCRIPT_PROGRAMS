#!/bin/bash -x
#To random number between 1-6 dice
randomNumber=$(( RANDOM%6+1))
echo "Random dice number between 1-6:" $randomNumber
