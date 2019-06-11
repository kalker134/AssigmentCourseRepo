#!/bin/sh
# Create a program with the next behaviour:

# -When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
# -If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
# -If the user's guess is correct then they should be congratulated and the program should end.
# -The program should not end until the user has entered the correct number of files in the current directory.
# -The program should be able to be run by entering bash guessinggame.sh into the console.
# -The program should contain at least one function, one loop, and one if statement.
# -The program should be more than 20 lines of code but less than 50 lines of code.

function check {
	if [[ $1 =~ ^[0-9]+$ ]]
	then
		echo "1"
	else
		echo "0"
	fi
}
 
echo "Could you guess how many file are inside this directory?"
read GuessFileNumber

DIR="$(realpath $0 | xargs dirname)/*"
RealNumberFiles=$(find $DIR -type f | wc -l)
while [[ $RealNumberFiles != $GuessFileNumber ]]
do
	
	if [[ "$(check "$GuessFileNumber")" == "1" ]]
	then 	
		if [[ $RealNumberFiles < $GuessFileNumber ]]
		then
			echo "Wrong number, the real number of files is lower"
		else

			echo "Wrong number, the real number of files is higher"
		fi
		echo "Try it again"
		read GuessFileNumber
	else
		echo "You didn't write a number"
		read GuessFileNumber
	fi
done
echo "Congratulations, you are right!!!"




