#!/bin/bash

DAILY_LOG="my_daily_work.log"

echo "---Starting Daily Tasks at $(date) ---">> $DAILY_LOG

echo "Working in: $(pwd)" >> $DAILY_LOG

echo "Files in folder:" >> $DAILY_LOG
ls -1>> $DAILY_LOG

echo "------------------------------------" >> $DAILY_LOG

echo "Daily tasks recorded in $DAILY_LOG. Have a great day!"
