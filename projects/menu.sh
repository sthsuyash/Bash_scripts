#!/bin/bash

echo ""
echo ""

echo "Menu Items:
1. Momo
2. Chowmein
3. Roti
4. Samosa"
echo ""

until [[ ! -z $order ]]; do
	read -p "What would you like? " order

	# case statement
	case $order in
	1)
		name="Momo"
		time=5
		price=100
		;; # end of variable

	2)
		name="Chowmein"
		time=6
		price=80
		;;

	3)
		name="Roti"
		time=10
		price=50
		;;

	4)
		name="Samosa"
		time=3
		price=20
		;;

	esac # end of case

	read -p "Enter the quantity: " quantity

done

echo ""
echo "Processing your order ..."
sleep 2

echo ""
echo "Your order:
ITEM: '$name'.
WAITING TIME: '$time' minutes.
TOTAL PRICE: Rs.$(($quantity * $price))."
echo ""

sleep 1
echo "Thank You!! Visit Again"
sleep 1
