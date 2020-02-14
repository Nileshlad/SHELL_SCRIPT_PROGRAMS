#!/bin/bash -x

# VARIABLE
limit=10

# FUNCTION
function calculateRandomNumber()
{
	randomCheck=$(( 100 + RANDOM % 900 ))
	echo $randomCheck
}

# TO FUNCTION CALL FOR RANDOM NUMBER AND STORE IN ARRAY
for (( index=0; index<$limit; index++ ))
{
	randomArray[$index]="$( calculateRandomNumber )"
}

# FUNCTION TO SORT ARRAY
function sortArray()
{
	for (( index=0; index<$limit; index++ ))
	{
		for (( indexOne=0; indexOne<$limit-1; indexOne++ ))
		{
			if [ ${randomArray[indexOne+1]} -lt ${randomArray[indexOne]} ]
			then
				temp=${randomArray[indexOne]}
				randomArray[indexOne]=${randomArray[indexOne+1]}
				randomArray[indexOne+1]=$temp
			fi
		}
	}
      echo ${randomArray[@]}
}

# FUNCTION CALL FOR SORT ARRAY
sortArray ${randomArray[@]}

# PRINT SECOND MINIMUM AND MAXIMUM VALUE
echo secondMinimumValue=${randomArray[1]}
echo secondMaximumValue=${randomArray[8]}
