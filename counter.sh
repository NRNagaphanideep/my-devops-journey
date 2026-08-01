#/bin/bash

COUNT=1

while [ $COUNT -le 3 ]
do
	echo "Current count is: $COUNT"
	COUNT=$((COUNT+1))
done

echo "Loop finished!"


