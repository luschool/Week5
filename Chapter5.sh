#!/bin/bash
#Week 5 Chapter 5 Script - Lucas Merriott

# this script will run some kernel log commands and perform some searches of dmesg and output to a file.
echo
echo Running command "cat /proc/cmdline"
cat /proc/cmdline 
echo
echo Lets see if we get the same results by running a searh on dmesg with "dmesg | grep Command"
echo
dmesg | grep Command

# now I want to filter output of dmesg and append it to a file in your home directory.

echo dmesg and grep work well together but its good to remember grep is case sensitive as I will demonstrate now.

cd ~
echo First I will search for BOOT > dmesgfilter.txt
dmesg | grep BOOT >> dmesgfilter.txt
echo Second I will try Boot >> dmesgfilter.txt
dmesg | grep Boot >> dmesgfilter.txt
echo Third I will try boot >> dmesgfilter.txt
dmesg | grep boot >> dmesgfilter.txt

cd ~
cat dmesgfilter.txt

echo All three searches should return different information.

echo Now i will perform a similar search looking for the word error and fail
echo and output it to your home directory


cd ~
dmesg | grep ERROR > dmesgerror.txt
dmesg | grep Error >> dmesgerror.txt
dmesg | grep error >> dmesgerror.txt
dmesg | grep FAIL >> dmesgerror.txt
dmesg | grep Fail >> dmesgerror.txt
dmesg | grep fail >> dmesgerror.txt

