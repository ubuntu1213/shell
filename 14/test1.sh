#!/bin/bash

fac=1


for ((number=1;number<=$1;number++));do
	fac=$[ $fac * $number ]
done


echo The factorial of $1 is $fac
