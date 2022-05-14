#!/bin/bash

##########
# practising bash conditionals using CLI game
##########
# welcome script
##########
echo ""
read -p "Enter your name: " name
sleep 2
echo ""
echo "Welcome to Elden Ring $name"
echo ""
sleep 1
##########
# options to choose from the various classes
# that you want to start as
##########
echo "Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"
# input the class from user
read -p ">> " class
##########
# case statement
##########
# like switch statement in other langs
##########
case $class in
1)
	type="Samurai"
	hp=50
	attack=30
	;;
#	;; => the end of that variable
2)
	type="Prisoner"
	hp=60
	attack=20
	;;
3)
	type="Prophet"
	hp=70
	attack=20
	;;
esac
##########
# end of case statement
##########
# print the user chosen class type and list their HP and attack
##########
echo "You have chosen: $type class."
echo "HP: $hp"
echo "Attack: $attack"
##########
# end of display
##########
# first demon battle
##########
# needs $(( )) for calculation
demon=$(($RANDOM % 2))
# $RANDOM % 2 => gives 0 and 1
echo ""
sleep 1
echo "Your first demon approaches."
sleep 1
echo "Prepare for battle."
echo ""
sleep 1
echo "Pick a number 0 or 1."
read userChoice
##########
# if statement for conditional
##########
if [[ $userChoice == $demon || $userChoice == "coffee" ]]; then
	echo "Demon VANQUISHED!! Congratulations $name."
	# variable to store if we won the demon or not for advancing to other fights
	win=1
else
	echo "You Died!!"
	win=0
fi
##########
# ending if statement
##########
# if you won with demon, you will proceed to fight margrit
# else the following if will not run and go to after this
##########
if [[ $win -eq 1 ]]; then
	# second battle
	Margrit=$(($RANDOM % 10))
	echo ""
	sleep 2
	echo "Boss Battle."
	sleep 1
	echo "Prepare for battle with Margrit."
	echo ""
	sleep 1
	echo "Pick a number from 0 to 9: "
	read userChoice
	##########
	#if statement to check for result against margrit
	##########
	if [[ $userChoice == $Margrit ]]; then
		echo "Margrit VANQUISHED!! Congratulations $name."
	else
		echo "You Died!!"
	fi
	##########
	# ending if statement
	##########
fi
##########
# ending of margrit fight
##########
echo ""
sleep 1
echo "End of Game"
##########
# end of the script
##########
