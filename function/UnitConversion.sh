#!/bin/bash -x
#TO PRINT  CHOICE
echo "1.celcius to farenheit"
echo "2.farenheit to celcius"

#Declear choice and degree
read -p "enter your choice" choice
read -p "enter the dgree you want to convert" degree

#Declear the convert function
function conversion() {

#case choice
	case "$choice" in
		1)
			if(( $degree>0 && $degree<100 ))
			then
				degf=`echo "scale=2; ($degree*9/5)+32" | bc`
				echo $degf
			else
				echo "invalid"
	    		fi
	   		;;
		
     
	  	2)
		     	if(( $degree>32 && $degree<212 ))
			then
	    			degc=`echo "scale=2; ($degree-32)*5/9" |bc`
				echo $degc
		   	else
		      		echo "invalid"
		   	fi
		   	;;
      		*)
		     	echo "invalid"
         		;;
	esac
}

#TO PRINT
result=$(conversion $choice $degree)
echo $result
