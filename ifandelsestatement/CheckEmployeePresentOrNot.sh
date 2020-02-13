/bash -x

#TO CONSTANT
ispresent=1

#TO RANDOM NUMBER BETWEEN 0-1
randomNumber=$(( RANDOM%2 ))

#TO CHECK EMPLOYEE IS PRESENT OR NOT
if [ $randomNumber -eq $ispresent ]
then 
	echo "Employee is present..."
else
	echo "Employee is abscent..."
fi
