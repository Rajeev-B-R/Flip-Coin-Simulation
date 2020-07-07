echo "**********Welcome to Flip Coin Simulation**********"

#!/bin/bash -x

flip=$(($(($RANDOM%10))%2))

if [ $flip -eq 1 ]
then
echo "Heads!"
else
echo "Tails!"
fi

