#!/bin/bash -x

#VARIABLES
minimum=0
maximum=0

#TAKE VALUES FROM USER
read -p "Enter first number:" firstNumber
read -p "Enter second number:" secondNumber
read -p "Enter Third number " thirdNumber

#CALCULATE ALL RESULT
firstresult=$((($firstNumber+$secondNumber)*$thirdNumber))
secondresult=$((($firstNumber%$secondNumber)+$thirdNumber))
thirdresult=$((($thirdNumber+$firstNumber)/$secondNumber))
fourthresult=$((($firstNumber*$secondNumber)+$thirdNumber))

#PRINT ALL RESULT
echo "Firstresult  : " $firstresult
echo "Secondresult : " $secondresult
echo "Thirdresult  : " $thirdresult
echo "Fourthresult : " $fourthresult

#LOGIC TO CHECK MAXIMUM RESULT AND MINIMUM RESULT
if [[ $firstresult -gt $secondresult && $firstresult -gt $thirdresult && $firstresult -gt $fourthresult ]]
then
	maximum=$firstresult
elif [ $secondresult -gt $thirdresult -a $secondresult -gt $fourthresult ]
then
	maximum=$secondresult
elif [ $thirdresult -gt $fourthresult ]
then
	maximum=$thirdresult
else
	maximum=$fourthresult
fi

if [[ $firstresult -lt $secondresult && $firstresult -lt $thirdresult && $firstresult -lt $fourthresult$ ]]
then
	minimum=$firstresult
elif [ $secondresult -lt $thirdresult -a $secondresult -lt $fourthresult ]
then
	minimum=$secondresult
elif [ $thirdresult -lt $fourthresult ]
then
	minimum=$thirdresult
else
	minimum=$fourthresult
fi

echo "Minimum:" $minimum
echo "Maximum :" $maximum
