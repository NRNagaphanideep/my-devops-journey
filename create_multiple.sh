#!/bin/bash

FILES="file1.txt file2txt file3.txt"

echo "Loop started...."

for FILE in $FILES
do
	touch "$FILE"
	echo "Created: $FILE"
done

echo "All files created successfully!"
