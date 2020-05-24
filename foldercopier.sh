#!/bin/bash
echo
read -p "Please Type the name of the existing folder you would like to copy: " folderName
#if the name is a valid directory
if [ -d "$folderName" ]; then
    #copy it to a new location
    echo
    read -p "Please type the name of the new destination folder: " newFolderName
    cp -r "$PWD/$folderName" "$PWD/$newFolderName"

echo
# The $PWD displays the current working directory / the $folder name completes it with the users selection
echo "Your folder and contents have been copied and are located at :$PWD/$folderName"
echo

else
    #otherwise, print an error
    echo "I couldn't find that folder"
fi
exit 0
