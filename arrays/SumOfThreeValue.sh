#!/bin/bash -x

#TO ARRAY VALUE
array=(2 -1 -1 2 -1)

#PRINT ARRAY
echo ${array[@]}

for(( index=0; index<5; index++ ))
do
   for(( indexOne=index+1; indexOne<5; indexOne++ ))
   do
      for(( indexTwo=indexOne+1; indexTwo<5; indexTwo++ ))
      do
         if [ $(($((array[index]))+$((array[indexOne]))+$((array[indexTwo])))) -eq 0 ]
         then
            echo "${array[index]} ${array[indexOne]} ${array[indexTwo]}"
         fi 
      done
   done
done
