#!/usr/bin/env bash
# File: guessinggame.sh
echo "How many files are in the current directory?"
echo ""
function loop {
	read input
	while ! [[ $input =~ ^[0-9]+$ ]]
	do
		echo Please input a number
		read input
	done

	local num_of_files=$(ls -a| grep [^.$] | wc -l)
	while [[ ! $input -eq $num_of_files ]]
	do
		if [[ $input -lt $num_of_files ]]
		then
			echo "Guess is too low. Guess again" && read input
		elif [[ $input -gt $num_of_files ]] 
		then
			 echo "Guess is too high. Guess again" && read input
		fi
	done
	echo "Congrats! You guessed right!"
}
loop
