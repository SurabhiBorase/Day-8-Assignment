#!/bin/bash -x

# Write a program in the following steps
# a. Roll a die and find the number between 1 to 6
# b. Repeat the Die roll and find the result each time
# c. Store the result in a dictionary
# d. Repeat till any one of the number has reached 10 times

declare -A diceDictionary;
one=0;
two=0;
three=0;
four=0;
five=0;
six=0;
while (( 1 ))
do
	diceRoll=$((RANDOM%6+1));
	case $diceRoll in
		1)
			((one++));
			diceDictionary["ONE"]=$one;
		;;
		2)
			((two++));
			diceDictionary["TWO"]=$two;
		;;
		3)
			((three++));
			diceDictionary["THREE"]=$three;
		;;
		4)
			((four++));
			diceDictionary["FOUR"]=$four;
		;;
		5)
			((five++));
			diceDictionary["FIVE"]=$five;
		;;
		6)
			((six++));
			diceDictionary["SIX"]=$six;
		;;
	esac
	if (( $one > 9 || $two > 9 || $three > 9 || $four > 9 || $five > 9 || $six > 9 ))
	then
		break;
	fi
done
echo "1 repeats " $one "times"
echo "2 repeats " $two "times"
echo "3 repeats " $three "times"
echo "4 repeats " $four "times"
echo "5 repeats " $five "times"
echo "6 repeats " $six "times"
