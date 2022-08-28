#!/bin/bash

echo "Welcome to elevator"
sleep 1

echo "Going up"
sleep 1

for i in {1..17};
do
	if [[ $i == $1 ]]; then
		continue
	fi
	echo "Floor $i"
	sleep 1
done

