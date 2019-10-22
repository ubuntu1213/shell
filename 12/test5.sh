#!/bin/bash


#testuser=NoSuchUser
testuser=student

if grep $testuser /etc/passwd;then
	echo "The user $testuser exists on this system."
else
	echo "The user $testuser does not exist on this system."
	if  ls -d /home/$testuser/;then
		echo "However, $testuser has a directory."
	fi
fi
