#!/bin/bash

func1() {
	temp=$[ $value + 5 ]
	result=$[ $temp * 2 ]

}

temp=4
value=6

func1

echo "the result is $result"


if [ $temp -gt $value ];then
	echo "temp is larger"
else
	echo "temp is smaller"
fi

