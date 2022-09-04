#!/bin/bash

# присваиваем переменной строку с несколькими словами
my_var="several random words"

# просто выводим строку
echo $my_var

function print_arguments {
    echo "Arguments amount: $#";
    for (( i=1; i<=$#; i++ )) ; do
        # печать i-го аргумента функции
        echo ${@:${i}:1};
    done
}

# в этом случае слова будут представлять отдельные аргументы
print_arguments $my_var

# в этом - вся строка интерпретируется как один аргумент
print_arguments "$my_var"

# в цикле for слова в строке будут выведены по отдельности
for str in $my_var
do
    echo $str
done

# но если переменная взята в двойные кавычки, то выведется вся строка
for str in "$my_var"
do
    echo $str
done

# определим еще одну переменную
my_var2="another word sequence"

# так же каждое слово будет выведено отдельно
for str in $my_var $my_var2
do
    echo $str
done

# а так будет выведена одна строка со значениями из 2-х переменных (1 итерация)
for str in "$my_var $my_var2"
do
    echo $str
done

# в этом случае значение каждой переменной выведется отдельной строкой
for str in "$my_var" "$my_var2"
do
    echo $str
done

# определим массив с двумя элементами
array=("array value one" "array value two")

# в этом цикле каждое слово элементов массива выведется отделно
for str in ${array[@]}
do
    echo $str
done

# заключение в двойные кавычки позволит вывести строки со значением элементов (столько итераций, сколько элементов массива)
for str in "${array[@]}"
do
    echo $str
done
