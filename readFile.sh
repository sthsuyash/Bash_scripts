#!/bin/bash

x=1

while read -r line
do
	echo "Line $x: $line"
	(( x ++ ))
done < $1 # reads the name of file as arguement

