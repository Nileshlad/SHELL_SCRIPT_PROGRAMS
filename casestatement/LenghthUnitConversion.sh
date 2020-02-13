#!/bin/bash -x

# USER LENGTH VALUE
read -p "Enter the length: " length

# TO PLAY AVAILABLE  CHOICES
echo Enter 1 to convert length from Feet to Inch
echo Enter 2 to convert length from Feet to Meter
echo Enter 3 to convert length from Inch to Feet
echo Enter 4 to convert length from Meter to Feet

# GET USER CHOICE
read -p "Enter your choice: " choice

#TO CONVERSION OF UNIT
case $choice in
	1)
		#TO  FEET TO INCH
		result=$(echo "scale=2; $length * 12" | bc)
		echo $length Feet = $result Inch
	;;
	2)
		#TO FEET TO METER
		result=$(echo "$length * 0.3048" | bc)
		echo $length Feet = $result Meter
	;;
	3)
		#TO INCH TO FEET
		result=`expr "$length * 0.083" | bc`
		echo $length Inch = $result Feet
	;;
	4)
		#TO METER TO FEET
		result=`expr "$length * 3.28" | bc`
		echo $length Meter = $result Feet
	;;
	*)
		echo Enter Valid Number
	;;
esac
