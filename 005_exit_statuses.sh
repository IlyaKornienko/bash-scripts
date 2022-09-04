#!/bin/bash

# в bash каждая команда завершается с определенным статусом (exit status)
# это целое положительное число от 0 до 255. статус 0 считается успешным завершением, остальные - неудачным
# статус завершения последней команды можно узнать из переменной $? сразу после выполнения команды

# ниже идут примеры команд и вывода их статуса завершения. иногда полезно знать значения статусов после выполнения
# различных команд, для правильной обработки ошибочной ситуациидля, а так же понимания как работает
# условный оператор if и оператор цикла while, ведь они обрабатывают именно статус завершения.
# можно задавать статус завершения скрипта аргументом команды exit

echo "Just initial echo"
echo "echo exit status: $?"

false
echo "false exit status: $?"

true
echo "true exit status: $?"

:
echo "noop command exit status: $?"

[[ -e "not_existent_file" ]]
echo "not existent file check exit status: $?"

[[ -e "/bin/bash" ]]
echo "existent file check exit status: $?"

(( 1+1 ))
echo "positive result after arithmetic op exit status: $?"

(( 1-1 ))
echo "zero result after arithmetic op exit status: $?"

(( 1-2 ))
echo "negative result after arithmetic op exit status: $?"

ls 1>/dev/null
echo "successfull ls utility exit status $?"

ls -l unexited_file_path 1>/dev/null 2>&1
echo "failure (file does not exists) ls utility exit status $?"

ls -xqwertyuiopasdfghj 1>/dev/null 2>&1
echo "failure (unknown flags) ls utility exit status $?"

unknown_command 1>/dev/null 2>&1
echo "bash unknown command exit status $?"

grep -q bash /etc/profile
echo "grep successful match exit status $?"

grep -q imaginary_word /etc/profile
echo "grep successful no match exit status $?"

bash -c "exit 123"
echo "script specified exit status $?"

# в общем случае команды exit, статусом завершения будет остаток от деления первого аргумента на 256
bash -c "exit 1000"
echo "script specified too big exit status $?"