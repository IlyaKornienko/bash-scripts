#!/bin/bash

# цикл for для списка значений
echo "loop for... with string"
for str in `echo "one two three"` ; do
    echo $str
done

# цикл for для списка значений (слова разделены символом перевода на новую строку)
echo -e "\nloop for... with several lines string"
for str in `echo -e "one\ntwo\nthree"` ; do
    echo $str
done

# цикл for для списка значений (слова разделены символом перевода на новую строку) но результат команды взят в даойные кавычки
echo -e "\nloop for... with quoted several lines string"
for str in "`echo -e "one\ntwo\nthree"`" ; do
    echo $str
done

# C-подобная запись цикла for
echo -e "\nC-like style loop for..."
for (( i=1; i<=5; i++ )) ; do
    echo "Iteration $i"
done

# так же в C-подобной записи цикла for можно указывать несколько операций через запятую
echo -e "\nC-like style loop for... with several operations"
for (( i=1,j=0; i<=5; i++,j=j+5 )) ; do
    echo "Iteration $i j=$j"
done

# цикл while выполняется пока статус завершения команды (exit status) успешен (равен 0)
echo -e "\nSimple loop while..."
i=1
while (( i<=5 )); do
    echo "Iteration $i"
    (( i++ ))
done

# цикл until выполняется пока статус завершения команды (exit status) неудачен (не равен 0)
echo -e "\nSimple loop until..."
i=1
until (( i > 5 )); do
    echo "Iteration $i"
    (( i++ ))
done

# для окончания итерации цикла for, while, или until используется команда continue
# для выхода из цикла for, while, или until используется команда break
echo -e "\nloop while... with continue and break commands"
i=1
while true ; do
    echo "Iteration $i"
    if (( i%2 )) ; then   # exit status = 0, когда результат отличен от нуля
        ((i++))
        continue
    fi

    # печатаем только четные числа
    echo $i

    ((i++))

    if (( i > 10 )) ; then
        break
    fi

done

# аргументом команды continue или break задается целое число, которое указывает вложенность итерации к которой применяется команда
i=1
echo -e "\nnested loops with continue and break commands"
while true ; do
    echo "Iteration $i (loop level 1)";

    for (( j=1; j < 5; j++ )) ; do
        echo -e "\tIteration $j (loop level 2)"

        k=1
        until false ; do
            if (( j != 2 && j != 4 )) ; then
                echo -e "\t\t---> break 3rd level loop"
                # do only for 2nd or 4th iteration of the 2nd level loop
                break
            fi

            echo -e "\t\tIteration $k (loop level 3)"

            if (( k == 3 && j == 2 )) ; then
                echo -e "\t\t---> continue 2nd level loop"
                continue 2
            elif (( k == 5 && j == 4 )) ; then
                if (( i>2 )) ; then
                    # only 3 iterations for 1st level loop
                    echo -e "\t\t---> break 1st level loop"
                    break 3
                else
                    echo -e "\t\t---> continue 1st level loop"
                    ((i++))
                    continue 3
                fi
            fi
            ((k++))
        done
    done

done