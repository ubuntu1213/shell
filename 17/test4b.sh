#!/bin/bash


func1() {
	ls -l badfile
	echo "trying to display a non-existent file"
}



echo "testing the function: "


func1 
echo "The exit status is: $?"
