#!/bin/bash
# the declare option needed to be in '' followed by --
'declare' -- secret=shhh
#Don't tell anyone!
#if the user types in the correct secret, tell them they got it right!
# the input needed to be put up above the if command
read -s -p "what's the secret code?"
echo

if [ "$secret" = $REPLY ]; then
    echo "You got it right!"
    correct=true

else     echo "You got it wrong :("
    correct=false
fi

echo
case $correct in
# the * had to chnaged to false output from above if
false)
    echo "Go Away!" 
    #people who get it wrong need to be told to go away
    # exit 1 needed to stop script at this point with 1 output
exit 1
    ;;
true)
    echo "you have unlocked the secret menu!"
    #TODO: add a secret menu for people in the know.
    ;;
    
esac
# exit 0 needed to stop script foloowing correct input
exit 0