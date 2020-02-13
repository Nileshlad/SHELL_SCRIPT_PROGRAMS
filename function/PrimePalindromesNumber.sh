#!/bin/bash -x

# USER INPUT
read -p "Enter the number: " number

# VARIABLE
originalNumber=$number
reverse=0
count=0

# PRIME FUNCTION
function isPrime()
{
	for (( i=1; i<=$number; i++ ))
	do
		if [ $(( number % i )) -eq 0 ]
		then
			count=$(( count + 1 ))
		fi
	done

	if [ $count -eq 2 ]
	then
		echo $number is Prime Number

		#TO FUNCTION PRINT TO CHECK PALINDROME OF PRIME NUMBER
		echo "$( isPalindrome $number )"
	else
		echo $number is not prime Number
	fi
}
