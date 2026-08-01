#!/bin/bash

USERNAME="$1"

if [ -z "$USERNAME" ]; then
	echo "[ERROR]:  Please provide a username!"
	echo "Usage Example: ./create_user.sh raju"
	exit 1
fi

LOG_FILE="user_actions.log"
CURRENT_DATE=$(date)

echo "------------------------------"
echo "User creation process started..."
echo "New User Name : $USERNAME"
echo "Timestamp: $CURRENT_DATE"

echo "SUCCESS: User $USERNAME created successfully!"
echo "----------------------------------------------"


