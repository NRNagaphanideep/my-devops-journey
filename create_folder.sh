#!/bin/bash

FILE_NAME="$1"

if [ -z "$FILE_NAME" ]; then
	echo "[ERROR]: Please provide a filename!"
	echo "Usage Example: ./create_folder.sh report.txt"
	exit 1
fi

LOG_FILE="file_actions.log"
CURRENT_DATE=$(date)

echo "--------------------------------------"
echo "File creation process started...."
echo "New File Name : $FILE_NAME"
echo "Timestamp : $CURRENT_DATE"

touch "$FILE_NAME"

echo "SUCCESS: File $FILE_NAME created successfully!"
echo "---------------------------------------------"




