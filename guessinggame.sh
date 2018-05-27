#!/usr/bin/env bash
# File: guessinggame.sh

function guess_status {
	echo $1
	guess=$1
	if [[ $guess -eq $number_files ]]
	then
		guess_correct=0
		echo "Congradulations you guessed right!"
	elif [[ $number_files -gt $guess ]]
	then
		echo "Number too low!"
	elif [[ $number_files -lt $guess ]]
	then
		echo "Number too high!"
	else
		echo "Your guess is wrong!" 
	fi
}

number_files=$(ls | wc -l)
echo $number_files
guess_correct=1

echo "How many files are in the current directory?"

while [[ $guess_correct -eq 1 ]]
do
	echo "guess:"
	read guess
	guess=$(($guess))
	guess_status $guess

done
