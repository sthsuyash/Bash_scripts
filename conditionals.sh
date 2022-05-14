#!/bin/bash

# practising conditionals in bash

echo "Hey, do you like coffee? (y/n)"
read coffee

# using if
if [[ $coffee == "y" ]]; then
    echo "Very good!!"
else
    echo "Oh no!!"
fi
#ending if
