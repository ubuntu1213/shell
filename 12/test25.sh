#!/bin/bash


if [ $USER = 'rich' ];then
	echo "Welcome $USER"
	echo "Please enjoy your visit"	
elif [ $USER = 'barbara' ];then
	echo "Welcome $USER"
	echo "Please enjoy your visit"
elif [ $USER = 'testing' ];then
	echo "Special testing account"
elif [ $USER = 'jessica' ];then
	echo "Special testing account"
else
	echo "Sorry, you are not allowed here"
fi

















