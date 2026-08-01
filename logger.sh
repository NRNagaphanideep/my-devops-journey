#!/bin/bash

LOG_FILE="my_actions.log"

echo "Action performed at: $(date)" >> $LOG_FILE
echo "User: $(whoami) ran the script:" >> $LOG_FILE
echo "-------------------------------">> $LOG_FILE

echo "Log updated in $LOG_FILE"


