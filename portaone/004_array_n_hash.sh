#!/bin/bash

# объявление массива вариант 1
declare -a array1

# объявление массива вариант 2
array2=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16)

# объявление массива вариант 3
array3=([1]=val1 [4]=val4 [10]=val33)

# присваивание значений н-му элементу массива
array1[3]=10

# обращение к n-му элементу массива
echo Array Nth element: ${array2[3]}

# распечатка всех элементов массива
echo Array elements: ${array2[@]}

# распечатка всех индексов массива
echo Array indexes: ${!array2[@]}

# количество элементов в массиве
echo Array elements amount: ${#array2[@]}

# объявление ассоциативного массива
declare -A a_array

# присваивание ключам хеша значений
a_array[key_one]="value_one"
a_array[key_two]="value_two"

# присваивание ключам хеша значений вариант 2
a_array=([key_one]="value_one" [key_two]="value_two")

# получение значения по ключу
echo Associative array value by key: ${a_array[key_one]}

# все ключи хеша
echo Associative array all keys: ${!a_array[@]}

# все значения хеша
echo Associative array all values: ${a_array[@]}
