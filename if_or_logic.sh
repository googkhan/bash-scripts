#!/bin/bash

echo "Enter any number"
read n

if [[ ( $n -eq 10 || $n -gt 40 ) ]]
then
    echo "You won the game"
else
    echo "You lost the game"
fi

