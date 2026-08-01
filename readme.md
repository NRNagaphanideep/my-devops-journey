# Day 1: Linux Basics - Navigation

* pwd - Shows current folder path
* ls - Lists files in current folder
* mkdir - Creates a new folder
* cd - Moves into a specific folder
* touch - Creates a new empty file

---

---

## 📅 Day 2: Linux File Management & Permissions

### 1. File & Folder Management
* `cp <source> <destination>` : To copy files from one place to another.
  * *Example:* `cp readme.md readme_backup.md`
* `mv <old_name> <new_name>` : To rename a file or move it to another folder.
  * *Example:* `mv readme_backup.md day1_notes.md`
* `rm <file_name>` : To permanently delete a file (Does not go to Trash).
  * *Example:* `rm day1_notes.md`

### 2. Linux File Permissions
* Command to view permissions: `ls -l readme.md`
* Output Format (e.g., `-rwxr-xr-x`):
  * **Owner (First 3):** Permissions for the user who created the file (`rwx`).
  * **Group (Middle 3):** Permissions for the team/group members (`r-x`).
  * **Others (Last 3):** Permissions for all other users on the system (`r-x`).
* Permission Types: `r` = Read, `w` = Write, `x` = Execute.


### 3. Modifying Permissions (`chmod`)
* **Symbolic Mode:** Uses letters to change permissions.
  * *Example:* `chmod +x readme.md` (Adds execute permission).
* **Numeric / Octal Mode:** Uses numbers where `r=4`, `w=2`, `x=1`, and `-=0`.
  * *Example:* `chmod 755 readme.md` (Owner=rwx (7), Group=rx (5), Others=rx (5)).
  * *Example:* `chmod 600 readme.md` (Owner=rw (6), Group/Others=none (0) - Used for private keys).
* **Recursive Mode (`-R`):** Applies permissions to a folder and all its sub-folders/files simultaneously.
  * *Example:* `sudo chmod -R 755 /path/to/folder`

### 4. Modifying Ownership & Groups (`chown`, `chgrp`)
* **Change Owner (`chown`):** Changes the user ownership of a file/folder.
  * *Example:* `sudo chown root readme.md`
* **Change Group (`chgrp`):** Changes the group ownership of a file/folder.
  * *Example:* `sudo chgrp adm readme.md`


### 5. Text Processing & Redirection
* Redirection: > (overwrite), >> (append)
* Grep: grep (search), -i (ignore case), -v (invert match)
* `>` : Overwrites data into a file. (e.g., `echo "Hello" > file.txt`)
* `>>` : Appends data to a file. (e.g., `echo "Next line" >> file.txt`)
* `grep` : Searches for a specific pattern in a file or stream.
* `grep -i` : Search ignoring case sensitivity.(ignore capital or small letters at the time of searching and give the output)
* `grep -v` : Displays lines that do *not* contain the pattern.
* `|` (Pipe) : Passes the output of one command as input to another.
* *Example:* `ps aux | grep "root"` (Filters root processes from running processes).
