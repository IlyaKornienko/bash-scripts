#!/bin/bash

echo "I have kapol \$30 baks"

mydir=$(pwd)
echo $mydir

echo "You are need write user:"
read user
if grep $user /etc/passwd
then
echo "We find $user"
else
echo "We donte find $user"
fi
