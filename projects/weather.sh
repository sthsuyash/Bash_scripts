#!/bin/bash

for i in $(cat cities.txt);
do
	weather=$(curl -s http://wttr.in/$i?format=3)
	echo "The weather for $weather"
done

