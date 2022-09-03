#! /bin/bash

for number in {1..100}; do
if [ $((number%3)) -eq 0 ]; then
echo $number
echo -e "\033[34m" "lol"

    else
            echo $number 


    fi

done
