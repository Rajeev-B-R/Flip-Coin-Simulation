echo "**********Welcome to Flip Coin Simulation**********"

#!/bin/bash -x

heads=0;
tails=0;

for (( noTrails=1; noTrails<=20; noTrails++ ))
do	
        number=$((RANDOM%2))
        if [ $number -eq 1 ]
        then
                (( heads ++ ))
                echo "Head count: $heads"
        else
                (( tails ++ ))
                echo "Tail count: $tails"
        fi
done

