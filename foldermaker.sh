#!/bin/bash
echo
# The following echo takes a user input, the -e,\c enable the input on the same line as the text
# I could have used the read -p command and put the foldername variabel at the end but given I
# am still learning I did it the longer way by using echo and then read
echo -e "Please type the name of the folder you would like to create: \c" 
# The read command associates the last input and names it as foldername
read folderName
echo
# The mkdrir command creates a new directory
mkdir "$folderName"
# The following is a simple confirmation, the $PWD details the Present Working Directory
echo "Your folder has been created in location $PWD/$folderName : "
echo
exit 0