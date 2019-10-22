#!/bin/bash


today=$(date +%y%m%d)
ls /usr/bin -al > log.$today
echo $BASH_SUBSHELL
