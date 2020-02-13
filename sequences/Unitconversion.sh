#!/bin/bash -x 

#TO CONVERT INCH TO FEET
read -p "Enter the Inch :" inch
firstResult=$(( $inch/12 ))
echo $inch " Inch is equal to" $firstResult "Feet"
