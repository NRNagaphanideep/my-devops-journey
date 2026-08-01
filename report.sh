#!/bin/bash
REPORT_FILE="daily_report.txt"

echo "-- SERVER STATUS REPORT ---" > $REPORT_FILE
echo "Date: $(date)" >> $REPORT_FILE
echo "Current User: $(whoami)" >> $REPORT_FILE
echo "System Uptime:" >> $REPORT_FILE
uptime >> $REPORT_FILE

echo "Report generated in $REPORT_FILE"
