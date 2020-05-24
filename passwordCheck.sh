#!/bin/bash

echo
# The -e \c  command lets the user input onto the same line as the text question
echo -e "Please Enter your User Password (hidden): \c"
# The -s hides the types input
read -s passwordCheck

#The $passwordCheck variable is converted to sha256sum and then checked against the specified file contents
echo "$passwordCheck" | sha256sum --check --status ./secret.txt

# The if command compares the last output to the true (0) or false (1) outcome
if [[ $? -eq 0 ]];

then
echo
echo "Your access is granted."
echo
exit 0

else
echo
echo "We are sorry your access is denied as your passwords is incorrect."
echo
exit 1

fi

