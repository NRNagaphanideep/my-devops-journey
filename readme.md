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

### 3. Changing Permissions
* `chmod` (Change Mode) command is used to modify file permissions.
* In DevOps, we use this to make automation scripts executable.
  * *Example:* `chmod +x readme.md`
