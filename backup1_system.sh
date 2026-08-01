#!/bin/bash

SOURCE_FILE="$1"

if [ -z "$SOURCE_FILE" ]; then
	echo "[ERROR]: Please provide a file name to backup!"
	echo "Usage Example: ./backup_system.sh report.txt"
	exit 1
fi

if [ ! -f "$SOURCE_FILE" ]; then
	echo "[ERROR]: The file '$SOURCE_FILE' does not exist!"
	exit 1
fi

BACKUP_DIR="my_backup_folder"
if [ ! -d "$BACKUP_DIR" ]; then
	mkdir "$BACKUP_DIR"
	echo "[INFO]: Backup folder '$BACKUP_DIR' created."
fi

cp "$SOURCE_FILE" "$BACKUP_DIR/"

if [ $? -ne 0 ]; then
	echo "[ERROR]: Backup failed during copy operation!"
	exit 1
fi


echo "SUCCESS: File '$SOURCE_FILE' successfully backed upto '$BACKUP_DIR/'!"

