#!/bin/bash -x

#USER
read -p "Enter a number" number

#TO PRINT NUMBER IN WORD
case $number in
	1)
		echo "One"
		;;
	2)
		echo "Two"
		;;
	3)
		echo "Three"
		;;
	4)
		echo "Four"
		;;
	5)
		echo "Five"
		;;
	6)
		echo "Six"
		;;
	7)
		echo "Seven"
		;;
	8)
		echo "Eight"
		;;
	9)
		echo "Nine"
		;;
	*)
		echo "Not Single Digit"
		;;
esac
