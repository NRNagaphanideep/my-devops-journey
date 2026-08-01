#!/bin/bash

USAGE=85

echo "Checking Disk Space..."

if [ $USAGE -gt 80 ]; then
	echo "WARNING: Disk space is running out! Current usage is $USAGE%"
else
	echo "SUCCESS: Disk space is normal."
fi

