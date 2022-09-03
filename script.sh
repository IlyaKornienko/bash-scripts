#!/bin/bash

for number in {1..100}; do
    if [ $((number%3)) -eq 0 ];
    then echo $number "Делиться"
	else echo $number

    fi

   if [[ "$number" ==  "Делиться" ]];
   then echo -en '\E[47;32m'"\033[1mS\033[0m" 	  
   else tput sgr0 

    fi


done
