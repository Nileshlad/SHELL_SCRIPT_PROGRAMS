#!/bin/bash -x 
echo "print the 10 random number"
for (( index=0; index<=10; index++))
do
array[index]=$((RANDOM%900+100))
done
#print the array of value
echo ${array[@]}

#Declear the variable maximum and second maximum
maximum=$((array[0]))
secondMaximum=$((array[0]))

	for (( index=0; index<=10; index++ ))
	do
        	if [ $((array[index])) -gt $maximum ] 
        	then
        	secondMaximum=$maximum
        	maximum=$((array[index]))
        elif [ $((array[index])) -gt $secondMaximum -a $((array[index])) -lt $maximum  ]
        then
        	secondMaximum=$((array[index]))
        fi
done

#To print 
echo "maximum" $maximum
echo "second maximum" $secondMaximum

#To variable minimum and secondMinimum
minimum=$((array[0]))
secondMinimum=$((array[0]))
	for (( index=0; index<10; index++ ))
	do
        	if [ $((array[index])) -lt $minimum ] 
        	then
        	secondMinimum=$minimum
        	minimum=$((array[index]))
        	elif [ $((array[index])) -lt $secondMinimum -a $((array[index])) -gt $minimum  ]
        	then
        	secondMinimum=$((array[index]))
        	fi
	done
#To print the minimum number and second minimum number
echo "minimum number" $minimum
echo "second minimum number" $secondMinimum
