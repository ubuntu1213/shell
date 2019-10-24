#!/bin/bash


echo 
count=1



for parm in "$*";do
	echo "\$* Parameter #$count = $param"
	count=$[ $count + 1 ]
done


echo 
count=1


for parm in "$@";do
	echo "\$@ Parameter #$count = $param"
	count=$[ $count + 1 ]
done


