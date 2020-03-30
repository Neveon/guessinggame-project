#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files are in the current directory?"

function loop {

	read local input
	local num_of_files=$(ls | wc -l)

	while [[ ! $input -eq $num_of_files ]]
	do
		[[ $input -lt $num_of_files ]] && echo "Guess is too low. Guess again" && read input
		if [[ $input -gt $num_of_files ]] 
		then
			 echo "Guess is too high. Guess again" && read input
		fi
	done
	
	echo "Congrats! You guessed right!"
}

loop
