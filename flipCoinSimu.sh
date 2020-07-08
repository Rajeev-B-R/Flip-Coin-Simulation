echo "**********Welcome to Flip Coin Simulation**********"

#!/bin/bash -x

heads=0
tails=0

while [ $heads -ne 21 -a $tails -ne 21 ]
do
	number=$(($RANDOM%2))
	if [ $number -eq 1 ]
	then
		echo "Heads"
		heads=$(($heads+1))
	else
		echo "Tails"
		tails=$(($tails+1))
	fi
done

echo "Heads count: $heads"
echo "Tails count: $tails"
 
if [ $heads -gt $tails ]
then
	diff=$(($heads-$tails))
	echo "Head wins by: $diff"
elif [ $tails -gt $heads ]
then
	diff=$(($tails-$heads))
	echo "Tail wins by: $diff"
elif [ $heads -eq $tails ]
then
	echo "Tie!"
	while [ true ]
        do
        	toss=$(($RANDOM%2))
                if [ $toss==1 ]
                then
                	heads=$(($heads+1))
                else
                        tails=$(($tails+1))
                fi
                if [ $(($heads-$tails)) -eq 2 ]
                then
                	echo "Head wins by 2 and count:" $heads
                elif [ $(($tails-$heads)) -eq 2 ]
                then
                	echo "Tail wins by 2 and count:" $tails
                fi
	done
fi
