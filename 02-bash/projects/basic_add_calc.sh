#!/bin/bash

#A first attempt to construct an arithmetic calculator

#Assign variables based on 2 input parameters to be used in the calculation
num1=$1;
num2=$2;

#check if the parameters have been input and request from user if not found
if [ $# -lt 2 ];then
       echo "Enter 1st number: "
       read num1
       echo "Enter second number: "
       read num2
fi

#Show addition by adding the inputs using an addition equation
sum=$((num1 + num2))
echo "The total is: $sum"
