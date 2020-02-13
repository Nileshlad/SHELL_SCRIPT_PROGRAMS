#!/bin/bash -x

# USER INPUT
read -p "Enter the Number 1 to 7 : " number

# DISPLAY DAYS BY READING NUMBER
case $number in
	1)
		echo Monday
		;;
	2)
		echo Tuesday
		;;
	3)
		echo Wednesday
		;;
	4)
		echo Thursday
		;;
	5)
		echo Friday
		;;
	6)
		echo Saturday
		;;
	7)
		echo Sunday
		;;
	*)
		echo Enter Number Between 1 to 7 Only.
		;;
esac
