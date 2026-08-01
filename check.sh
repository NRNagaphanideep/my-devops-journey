#!/bin/bash

FILE_NAME=$1

echo "Checking if $FILE_NAME exists...."

ls $FILE_NAME

if [ $? -eq 0 ]; then
	echo "Success: File found!"
else
	echo "Error: File does not exist."
fi

