#!/bin/bash

	echo "enter first value:"
read x
	echo "enter second value"
read y
echo "enter action symbol (+,-,/,*)"
read act

case $act in
"+") echo " $x + $y ="  $(expr $y + $x);;
"-") echo "$x - $y ="   $(expr $x - $y);;
"/") if [ $y -eq 0 ]; then
       echo "error: delimiter by zero";
     else
       echo " $x / $y =" $(expr  $x / $y);
     fi;;
"*") echo " $x * $y =" $(expr  $x \* $y);;
*) echo "command is unknown!"
esac
