#!/bin/bash

# Clear the terminal screen
clear

# The -e \c  command lets the user input onto the same line as the text question
# The default password is 1234 based on the secret.txt file
echo
echo -e "Please Enter Your User Password (hidden): \c"

# The -s hides the types input
read -s passwordCheck

#The $passwordCheck variable is converted to sha256sum and then checked against the specified file contents
echo
echo "$passwordCheck" | sha256sum --check --status ./secret.txt

# The if command compares the last output to the true (0) or false (1) outcome
if [[ $? -eq 0 ]];

then
    echo
    echo -e "\033[1;33mYour access is granted.\033[0m"
    echo
    exit 0

else
    echo
    echo -e "\033[1;31mWe are sorry your access is denied as your passwords is incorrect.\033[0m"
    echo
    exit 1

fi

exit 0

