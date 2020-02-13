#!/bin/bash -x 

#TO CONVERT INCH TO FEET
read -p "Enter the Inch :" inch
firstResult=$(( $inch/12 ))
echo $inch " Inch is equal to" $firstResult "Feet"

#To CONVERT FEET TO INCH
read -p "Enter the feet :" feet
secondResult=$(( $feet*12 ))
echo  $feet "feet is equal to " $secondResult "inch"
