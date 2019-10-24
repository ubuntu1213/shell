#!/bin/bash


if [ $# -ne 2 ] ;then 
	echo 
	echo Usage: test9.sh a b
	echo 
else 
	total=$[ $1 + $2 ]
	echo 
	echo  the total is $total
	echo 
fi	



