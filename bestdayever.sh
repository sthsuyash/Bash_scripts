#!/bin/bash

# takes input during executing in command line
# first input is name and second is thing
# empty if not entered
name=$1
thing=$2

# initializing the variables
user=$(whoami)
date=$(date)
directory=$(pwd)

echo "Hello $name!!"
sleep 1
echo "You're looking great $name!!"
sleep 1
echo "You have a great $thing $name!!"
sleep 2
echo "You're currently at date: $date logged in as $user and you are in $directory directory."
