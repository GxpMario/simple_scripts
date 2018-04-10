#!/bin/bash

# outputs the time every x seconds for y times
# How to input the ordered variables:
# <$ ./current_time.sh 3 1>
# read -p "   " variable is a oneliner for input
# the while loop check for empty variables


read -p "What is the interval (sec) you want? " seconds
while [[ -z "$seconds" ]]; do
	read -p "I need your input!" seconds 
done

read -p "How many times shall I print? Enter for [1]. " times
while [[ -z $times ]]; do
	times=1
done

loops=0
while [ $loops -lt $times ];
do
    echo "Attempt $(($loops+1))"  # double bracket to echo mixed statements
    date +"Now!-> : %H:%M:%S"
    sleep $seconds  
    ((loops+=1))
done
echo "I'm done.."


