#!/bin/bash

name=$1
thing=$2

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
