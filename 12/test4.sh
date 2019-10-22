#!/bin/bash


testuser=NoSuchUser

if grep $testuser /etc/passwd ;then 
	echo "The bash files for user $testuser"
	ls -a /home/$testuser/.b*
		echo 
else
		echo "the user $testuser does not exist on this system."
		echo

fi



