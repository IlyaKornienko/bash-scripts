#!/bin/bash

string=1234567890abcdef
var_name="string"

# If parameter is unset or null, the expansion of word is substituted. Otherwise, the value of parameter is substituted.
echo Example 1: ${parameter:-word}

# If parameter is set, the expansion of word is substituted. Otherwise, the value of parameter is substituted.
echo Example 2: ${parameter:+word}

# If parameter is unset or null, the expansion of word is assigned to parameter. The value of parameter is then substituted. Positional parameters and special parameters may not be assigned to in this way.
echo Example 3: ${parameter:=word}

# If parameter is null or unset, the expansion of word (or a message to that effect if word is not present) is written to the standard error and the shell, if it is not interactive, exits. Otherwise, the value of parameter is substituted.
echo Example 4: ${parameter:?word}

# обращение к переменной по её имени из другой переменной
echo Example 5: Name = ${var_name} value = ${!var_name};

# печать подстроки с (н+1)-го символа от начала строки
echo Example 6: ${string:7};

# печать подстроки с (н+1)-го символа заданной длины
echo Example 7: ${string:7:2};

# печать подстроки с (н+1)-го до m-го символа с конца строки
echo Example 8: ${string:7:-2};

# печать подстроки с н-го символа с конца строки
echo Example 9: ${string: -7};

# печать подстроки с н-го символа с конца строки заданной длины
echo Example 10: ${string: -7:2};

# печать подстроки с н-го символа с конца строки заданной длины до m-го символа с конца строки
echo Example 11: ${string: -7:-2};

# печать длинны строки
echo Example 12: ${#string};

# вырезание совпавшей подстроки в начале
echo Example 13: ${string#*890};

# вырезание совпавшей подстроки в конце
echo Example 14: ${string%abc*};
