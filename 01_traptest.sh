#!/bin/bash

# обработчик на сигнал получаемые после нажатия Ctrl+C
trap "echo SIGINT captured" SIGINT

while :         # запускаем бесконечный цикл
do
    sleep 10    # "засыпаем" на 10 секунд
done

# для выполнения кода обработчика нажимаем Ctrl+C
