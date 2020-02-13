#!/bin/bash -x

#To random number 
echo "Random Numbers Are :" 
numberOne=$(( RANDOM%90+10))
numberTwo=$(( RANDOM%90+10))
numberThree=$(( RANDOM%90+10))
numberFour=$(( RANDOM%90+10))
numberfive=$(( RANDOM%90+10))

#To print the random number
echo "First random number  :" $numberOne
echo "Second random number :" $numberTwo
echo "Third random number  :" $numberThree
echo "Fourth random number :" $numberFour
echo "Fifth random number  :" $numberfive

#To total of random number
Sum=$(( $numberOne + $numberTwo + $numberThree + $numberfour + $numberfive))

#To print the number
echo "Sum of Random Two Digit 5 numbers are :" $Sum

#To random average
average=$(( $Sum/5 ))
echo "Average of random 5 Numbers :" $average
