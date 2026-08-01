Exit Codes ($?)
Every Linux command returns a status number after execution to indicate whether it succeeded or failed.

$?: Stores the exit code of the immediately preceding command.

0 (Zero): Indicates the command executed successfully with no errors.

Non-zero (e.g., 1, 2): Indicates the command encountered an error/failure.

5. Operators and Symbols Guide
Important conditional operators and symbols used in shell scripting:

! (Exclamation Mark / Logical NOT):

Reverses a condition (means "NOT").

Example: if [ ! -f "file.txt" ]; then means "if the file does NOT exist".

Comparison & File Test Operators:

-z: Checks if a variable is empty/zero length.

-f: Checks if a file exists.

-d: Checks if a directory/folder exists.

-ne (Not Equal): Checks if two numbers are not equal (e.g., [ $? -ne 0 ] means "if exit code is not equal to 0").

-le (Less than or Equal to): Checks if a number is less than or equal to another (e.g., [ $COUNT -le 3 ]).

Headlines of Real-Time Scenarios:-

1. System Health & Log Monitoring Script

Concepts Used: Arguments, Variables, Exit Codes ($?), If-Else, For Loop, and While Loop.

Scenario: Checked user-provided service status using which and exit codes, automated log file backups using a loop, and simulated a server ping test using a counter.

2. Digital Shopping / User Management Setup Script

Concepts Used: Arguments, If-Else, For Loop, and While Loop.

Scenario: Validated user inputs from the command line, automatically created multiple user directories (user1_folder, user2_folder, user3_folder) using a for loop, and tracked setup progress using a while loop.
