#!/bin/bash

# is my internet down?

read -p "What do you want to check? " target

while true
do
	if ping -q -c 2 -W 1 $target > /dev/null; then
		echo "$target is up."
		break
	else
		echo "$target is down."
	fi
sleep 1
done

