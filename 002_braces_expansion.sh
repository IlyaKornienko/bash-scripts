#!/bin/bash

# простое раскрытие фигурных скобок
echo Simple expansion 1: {foo,bar};
echo Simple expansion 2: a{b,c,d}e;

# раскрытие скобок для диапазонов
echo Range expansion 1: {1..5};
echo Range expansion 2: {5..1};
echo Range expansion 3: {a..f};
echo Range expansion 4: {f..a};
# ...с шагом
echo Range expansion with increment 1: {1..20..2};
echo Range expansion with increment 2: {20..1..2};
echo Range expansion with increment 3: {a..k..3};
echo Range expansion with increment 4: {k..a..4};
# ...с форматом
echo Format range expansion 1: {01..20..5};
echo Format range expansion 2: {001..40..5};

# комбинирование
echo Combination: {A..Z}{0..9};
# вложенность
echo Nesting: {{A..Z},{a..z}};

# {$begin..$end} - так работать не будет
# первыми раскрывается выражение в скобках. т.е. в примере ниже строка преобразуется интерпретатором к виду "echo $PWD/foo $PWD/bar"
# затем идет замена имен переменных на их значения
echo Variable vith braces: $PWD/{foo,bar};

