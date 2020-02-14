#!/usr/bin/env bash
number_of_files=$(ls -1A | wc -l)
answer=-1

function play {
    echo "How many files are in current directory?"

    while [[ ! $answer -eq $number_of_files ]]
    do
        read answer

        if [[ ! $answer =~ ^(0|[1-9][0-9]*)$ ]]
        then
            let answer=-1
            echo "Invalid input. Non-negative integer expected (0,1,2,...)"
        elif [[ $answer -gt $number_of_files ]]
        then
            echo "Too high. Try a bit lower"
        elif [[ $answer -lt $number_of_files ]]
        then
            echo "Too low. Try a bit higher"
        else
            echo "Congratulations! You are correct."
        fi
    done
}

play
