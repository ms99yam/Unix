#!/bin/bash
#program:

while [ true ]
do
echo "Please press the number to choose mode: "
echo "1. Elementary arithmetic "
echo "2. Square root "
echo "3. Positional notation "
echo "4. Factorial "
echo "5. Fibonacci "
echo "*****press \"exit\" if you are done!*****"

read -p "Mode: " mode


#exit when end the program
if [ $mode == "exit" ]; then
exit 0
fi


#Elementary arithmetic + - * / ^
if [ $mode == "1" ]; then

read -p "Arithmetic: " ari
echo "Arithmetic( $ari ) = "
echo "scale=4;$ari" | bc


#Squre root 
elif [ $mode == "2" ]; then
read -p "Your number is: " squNum
echo "Square root of ( $squNum ) = "
echo "scale=4;sqrt($squNum)" | bc


#Positional notation
elif [ $mode == "3" ]; then
echo "Choose From decimal or To decimal " 
echo "1. From decimal "
echo "2. To decimal "
read -p "choose: " pos
read -p "Your number: " num

if [ $pos == "1" ];then		#choose to transform number from decimal
echo "Your number in Binary is: "
echo "obase=2;$num" | bc
echo "Your number in Octal is: "
echo "obase=8;$num" | bc
echo "Your number in Hexadecimal is: "
echo "obase=16;$num" | bc

elif [ $pos == "2" ];then	#choose to transform number to decimal
read -p "Original position is: " oriPos
echo "Your number in Decimal is: "
if [ $oriPos == "2" ];then
echo "ibase=2;$num" | bc
elif [ $oriPos == "8" ];then
echo "ibase=8;$num" | bc
elif [ $oriPos == "16" ];then
echo "ibase=16;$num" | bc
fi	#end of choosing oriPos
fi	#end of choosing pos


#Factorial
elif [ $mode == "4" ]; then
read -p "Please Input your number: " facNum
racResult=1			
for(( i=1; i<=${facNum}; i=i+1 )) 
do 				#evaluating the result
racResult=$racResult*$i
done

echo "Factorial of ( $facNum ) = $facNum! = "
echo "$racResult" |bc


#Fibonacci
elif [ $mode == "5" ]; then
read -p "Please Input your number: " fibNum
f0=0
f1=1
for(( i=2; i<=${fibNum}; i=i+1))
do				#evaluating the result
fib=`echo "${f0}+${f1}"| bc`
f0=$f1
f1=$fib
done
if [ $fibNum == "0" ];then
echo "Fibonacci of ( $fibNum ) = $f0"
elif [ $fibNum == "1" ];then
echo "Fibonacci of ( $fibNum ) = $f1"
else
echo "Fibonacci of ( $fibNum ) = $fib" 
fi

fi
echo ""
echo "---------------------------------------------"
done

exit 
