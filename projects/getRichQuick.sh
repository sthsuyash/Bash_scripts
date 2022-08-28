#!/bin/bash

echo ""
echo "Bash Script to calculate the age you'll be millionare"
echo "uses Random number generation"
echo ""

# var_name=$1 => during running the script, takes input
# echo: prints data
echo "Enter your name: "
# read var_name: input data and store in var_name
read name

echo "Enter your age: "
read age

# to print the varible, $var_name
echo "Hello $name, you are $age years old."

# $RANDOM: inbuilt variable, just like $SHELL, $USER, $PWD, $HOSTNAME
# echo $RANDOM

# to make user defined own variable:(setting env variables)
# var_name=data
# this way it is not available in our scripts, and we must export the var to use it
# export var_name: to make the variable accessible everywhere, else it cannot be accessed by your child scripts
# now we can use in our scripts
# to use it even after loging out and in
# edit it in the .bashrc

# using arithmetic in bash: $((exp))
# echo $(( 3+4 )) => adding 3 and 4

echo ""
echo "Calculating"
sleep 2

# $RANDOM % x: x = range in which the output is generated
# add age to the generated number, gives the predicted(random-generated) age at which you will be rich.
timee=$(( $RANDOM % 20 ))
millionare=$(( timee + age ))
echo "$name, you are going to be millionare after $timee years,i.e.by the age of $millionare."
