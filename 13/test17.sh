#!/bin/bash



for var1 in {1..10};do
	if [ $var1 -eq 5 ];then
		break
	fi
	echo "Iteration number: $var1"
done

echo "The for loop is completed"
