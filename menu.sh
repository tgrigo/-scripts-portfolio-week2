#!/bin/bash
chmod a+x ~/scripts/portfolio/Week2/passwordCheck.sh
chmod a+x ~/scripts/portfolio/Week2/foldermaker.sh
chmod a+x ~/scripts/portfolio/Week2/setPassword.sh
chmod a+x ~/scripts/portfolio/Week2/foldercopier.sh

echo 
echo "Hi and welcome to my little menu page, first we need you to enter your password: "
################### Intial password is 1234


# the two pipes exits the parent script if the child script returns a false return value
# the parent script is initiated by the following command

~/scripts/portfolio/Week2/passwordCheck.sh || exit 1

echo "Please select what you would like to do from the below menu: "


# Created Lists become our input
select os in Create\ Folder Copy\ Folder Set\ New\ Password

do
echo
case $os in
# The Create Folder case is used here
"Create Folder")
bash ~/scripts/portfolio/Week2/foldermaker.sh
exit 0
;;
# The Copy Folder case is used here
"Copy Folder")
bash ~/scripts/portfolio/Week2/foldercopier.sh
exit 0
;;
# The Set New Pssword case is used here
"Set New Password")
bash ~/scripts/portfolio/Week2/setPassword.sh
exit 0
;;
# invalid data
*)
echo "Sorry but thats an invalid entry."
break
;;
esac
done

exit 1