#!/bin/bash -x

echo "Enter year to check leap year or not "
read -p " " year

#TO CHECK YEAR IS LEAP OR NOT
if [ $year -gt 1582 -a $year -lt 10000 ]
then
	if  [ $(($year % 4)) -eq 0 ] && [ $(($year % 100)) -ne 0 ] || [ $(($year % 400)) -eq 0 ]
	then 
		echo " " $year "is leap year"
	else
		echo $year "is not leap year"
	fi
else
	echo "Enter valid year"
fi

