#!/bin/bash

#define armstrong num is the number power the number of digit/s of this number = equal the number itself
# 9 ->armstrong num bc ->9^1=9
# 153 ->armstrong num bc -> 1^3 + 5^3 + 3^3= 1 + 125 + 27 = 153

echo "enter a number:"
read num
d_sum=0
declare -a array_digit

function armstrong()
{
    sum_of_mul=0
for (( i=0; i<${#num}; i++ )); 
do
    array_digit[i]="${num:i:1}"
    d_sum=${#num}

done

for (( i=0; i<${#num}; i++ )); 
do
    mul[i]=$(( ${array_digit[i]} ** ${#num} ))
    sum_of_mul=$(( $sum_of_mul + ${mul[i]} ))
done

if [ $num -eq $sum_of_mul ]
then
    echo "armstrong num"
else
    echo "not armstrong num"
fi
}

armstrong