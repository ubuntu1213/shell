#!/bin/bash

trap "echo 'Sorry! I have trapped Ctrl-C'" SIGINT

echo this is a test script

count=1
while [ $count -le 5 ];do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done


trap "echo 'I modified the trap!'" SIGINT
count=1
while [ $count -le 5 ];do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done


