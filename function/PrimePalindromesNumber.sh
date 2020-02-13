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

		#TO PRINT FUNCTION 
		echo "$( isPalindrome $number )"
	else
		echo $number is not prime Number
	fi
}

#TO FUNCTION PALINDROME
function isPalindrome()
{
	while [ $number -ne 0 ]
	do
		remainder=$(( $number % 10 ))
		reverse=$(( reverse * 10 +remainder ))
		number=$(( $number / 10 ))
	done
	echo $reverse

	if [ $originalNumber -eq $reverse ]
	then
		echo "Number is Palindrome"
	else
		echo "Number is not Palindrome"
	fi
}

# TO PRINT FUNCTION 
echo "$( isPrime $number )"
echo "$( isPrime $reverse )"
