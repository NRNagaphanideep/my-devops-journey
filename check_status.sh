#/bin/bash

cp source_file.txt target_file.txt

if [ $? -ne 0 ]; then
	echo "[ERROR]: The copy command failed!"
	exit 1
fi

echo "SUCCESS: Copy operation completed successfully."

