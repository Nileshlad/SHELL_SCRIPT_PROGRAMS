#!/bin/bash -x 
 
for(( index=1; index<100; index++ ))
do
number=$index

#TAKE THE NUMBER OF REMAINDEE 
remainder=`expr $index % 10 `
number=`expr $index / 10 `

if [ $remainder -eq $number ]
then
    #TO PRINT   
    echo "To print the repeated twice:" $index
    #TO STORE THE ARRAY 
    array=($index)
fi
done
