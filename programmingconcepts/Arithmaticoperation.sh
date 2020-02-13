#!/bin/bash -x
#VARIABLE
firstNumber=10
secondNumber=20
thirdNumber=40

#TO ARITHMATIC OPERATION
firstOperation=$(( $firstNumber + $secondNumber * $thirdNumber ))
secondOperation=$(( $firstNumber % $secondNumber + $thirdNumber ))
thirdOperation=$(( $firstNumber % $secondNumber + $thirdNumber ))
fourOperation=$(( $firstNumber * $secondNumber + $thirdNumber ))

#TO PRINT
echo $firstOperation
echo $secondOperation
echo $thirdOperation
echo $fourOperation
