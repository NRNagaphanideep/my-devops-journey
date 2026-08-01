#!/bin/bash

BACKUP_DIR="$HOME/my_backups"
SOURCE_DIR="$HOME/devops-learning/my_project"
LOG_FILE="$HOME/backup_status.log"

echo "Backup process started at $(date)" >> $LOG_FILE

if [ ! -d "$BACKUP_DIR" ]; then
	mkdir -p $BACKUP_DIR
fi

FILE_NAME="project_backup_$(date +%F).tar.gz"
tar -czf "$BACKUP_DIR/$FILE_NAME" $SOURCE_DIR

if [ $? -eq 0 ]; then
	echo "SUCCESS: Backup created successfully as $FILE_NAME" >> $LOG_FILE
else
	echo "ERROR:Backup failed" >> $LOG_FILE
fi

echo "Backup completed! Check your log file content below:"
cat $LOG_FILE
