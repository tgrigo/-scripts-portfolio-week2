#!/bin/bash

# Have the User Enter a folder name, dispalyed on the same line with the -n 
echo
echo -n -e "Please enter a New Folder Name for your password to be stored in: \c" 
# The read funtion captures the user input, in this case to user_var
    read folderName
    mkdir "$folderName"

# Have the User Enter a Hidden Password, displayed on the same line with the -e \c command
# The read funtion captures the password input, in this case to passwordSet, 
# The -s hides the password while being input
echo
    echo -e "Please Enter a User Password (hidden) : \c" 
    read -s passwordSet
echo

# The following takes a user entered password folder name variable and saves it into the secret.txt file
# The >> function allows the list to be populated by addding data, not over writing data as is the
# case with the > function. If secret.txt file does not exist it will create it
# The |sha256sum converts the $passwordSet variable into sha256 encypted string then saves the string
    echo $passwordSet| sha256sum > ~/scripts/portfolio/Week2/$folderName/secret.txt
echo

# A confirmation line to confirm the created folder
# The $PWD displays the present working directory, the $folderName identified the new folder location 
echo "Thank you, your password (saved in sha256 format) has been saved to the $PWD/$folderName file."
echo

exit 0

