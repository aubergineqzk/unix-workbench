#!/usr/bin/env bash
# File: guessinggame.sh

# modify environment variable IFS so that filenames with blank would be processed correctly
MY_SAVEIFS=$IFS
#IFS=$(echo -en "\n\b")
IFS=$'\n'

files=($(ls))
filenum=${#files[*]}
guessnum=-1

# modify IFS back
IFS=$MY_SAVEIFS

# check if the answer is right
function check {
    if [[ $1 -lt $2 ]]
    then
    echo "Sorry, your guess is higher."
    elif [[ $1 -gt $2 ]]
    then
    echo "Sorry, your guess is lower."
    fi
}

# loop ends when have the right answer
while [ $guessnum -ne $filenum ]
do
  echo "Let's play this game. Please guess how many files are in the current directory. (Input an integer here:)"
  read guessnum
  check $filenum $guessnum
done
echo "Congratulation! You are right!"