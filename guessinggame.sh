#!/bin/bash

function clean_up {
  rm -f file*
}

function generate_files {
  for ((i = 0; i < $(( $RANDOM % 10 + 1 )); ++i))
  do
    touch file$i.txt
  done
  n_res=$(ls -1 file* | wc -l)
  #echo Files generated: $n_res 
}

function guess {
  local guess=0
  while [[ $guess -ne $n_res ]]
  do
    echo "Guess the number of files in the current folder"
    read guess
    if [[ $guess -lt $n_res ]]
    then
      echo "Too low, try again."
    elif [[ $guess -gt $n_res ]]
    then
      echo "Too high, try again."
    else
      echo "You got it!"
    fi
  done
}

clean_up
generate_files
guess
