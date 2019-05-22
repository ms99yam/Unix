#!/bin/bash
#program:


while [ true ]

do

read -p "intput :" np

#輸入為exit時跳出
if [[ $np == "exit" ]]; then
exit 0
fi

u=1

#+-*/
#直接按enter時進入一般運算
if [[ $np == "" ]]; then
read -p "intput +-*/ :" nn
echo "+-*/ $nn = "
echo "scale=5;$nn" | bc
#轉進位數
echo "obase=6;$nn" | bc

else 

filename2=$(date +%Y-%m-%d-%H:%M:%S)
echo "n! time  $filename2"
#filename2=$(date +%s -d $filename2)
#n!運算
for((i=1; i<=${np}; i=i+1))
do 
u=$u*$i
 

done
echo "$np!="
echo "$u" |bc
filename=$(date +%Y-%m-%d-%H:%M:%S)

#filename1=$(($filename-$filename2))
#filename1=$(date +%Y-%m-%d-%H:%M:%S -d "1970-01-01 UTC $filename1 seconds")

echo "$filename"

#fib num 運算
n0=0
n1=1
filename2=$(date +%Y-%m-%d-%H:%M:%S)
echo "fib time   $filename2"
for((i=2; i<=${np}; i=i+1))
do

u=`echo "${n0}+${n1}"| bc`

n0=$n1
n1=$u

done

echo "fib $np = $u" 
filename=$(date +%Y-%m-%d-%H:%M:%S)
#filename1=$(($filename-$filename2))
echo "$filename"

filename2=$(date +%Y-%m-%d-%H:%M:%S)
echo "root  time  $filename2"
#squre root 平方根運算
echo "square root $np = "
echo "scale=5;sqrt($np)" | bc
filename=$(date +%Y-%m-%d-%H:%M:%S)
#filename1=$(($filename-$filename2))
echo "$filename"
fi



done



exit 0







