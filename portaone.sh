#!/bin/bash

echo "The time is `date`"

#Створення пустого файлу чи перезапис файла

: > /home/illia/file

echo "Create file"
echo "------------------------------------------------"
ls -la /home/illia/file
echo "-----------------------------------------------"
echo "Done"

# Перевірка наявності директорої
test -d /root && echo "Exists" || echo "Does not exist"
