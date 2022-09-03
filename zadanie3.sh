#!/bin/bash

	echo "Start"
	echo "What is your filename (example /home/ilya-netology)?"
	read filename

stat -c "%s" $filename

echo "Done"
