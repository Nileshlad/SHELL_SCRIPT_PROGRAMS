#! /bin/bash -x

#VARIABLE
indexOne=0

#TO FIND PRIME FACTORS AND STORE IT INTO ARRAY
function primeFacotrs()
{
	array=$1
	for (( index=2; $index<=$number; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			array[indexOne]=$index
			((indexOne++))
			number=$(($number/$index))
		fi

		if [ $(($number%$index)) -eq 0 ]
		then
			((index--))
		fi
	done
	echo "${array[@]}"
}

#TO TAKE NUMBER FROM USER 
read -p "Enter a number: " number

#PRINT
echo "Prime factors of Number are" "$( primeFacotrs $((number)))"

