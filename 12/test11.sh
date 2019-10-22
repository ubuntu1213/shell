#!/bin/bash

dir=/sofea


if [ -d /sofea ];then
	echo "The $dir directory exists"
	cd $dir
	ls
else
	echo "The $dir directory does not exist"
fi


	
