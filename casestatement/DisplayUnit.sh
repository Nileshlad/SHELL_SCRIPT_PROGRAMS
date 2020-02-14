#!/bin/bash -x

# READ USER INPUT
read -p "Enter the Number: " number

# DISPLAY DIGIT PLACE
case $number in
	1)
		echo Unit
		;;
	10)
		echo Ten
		;;
	100)
		echo Hundread
		;;
	1000)
		echo Thousand
		;;
	*)
		echo Enter Numbers 1, 10, 100 or 1000 only.
		;;
esac
