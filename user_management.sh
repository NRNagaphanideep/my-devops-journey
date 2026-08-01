#!/bin/bash

USER_NAME="$1"

echo "-------------------------"

if [ -z "$USER_NAME" ]; then
	echo "[ERROR]: Please provide a username as an argument!"
	echo "Usage Example: ./script.sh ram"
	exit 1
else
	echo "[SUCCESS]: Username $USER_NAME received successfully!..."
fi

echo " ================================"



FOLDERS="user1_folder user2_folder user3_folder"

echo "Loop started..."

for FOLDER in $FOLDERS
do
	mkdir -p "$FOLDER"
	echo "Created Directory: $FOLDER"
done

echo "All folders created successfully!"
echo "-----------------------------------"


COUNT=1

while [ $COUNT -le 3 ]
do
	echo "User setup in progres... Current count is : $COUNT"
	COUNT=$((COUNT + 1))
	sleep 1
done

echo "============================="
echo "User setup completed successfully"
echo "===================================="

