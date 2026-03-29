#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script loops through key directories to audit their security state.
# Concepts: for loop, arrays, du, ls, awk for field extraction.

# Array of critical directories for the MySQL footprint
DIRS=("/etc/mysql" "/var/lib/mysql" "/var/log/mysql" "/usr/bin" "/tmp")

echo "----------------------------------------------------------"
echo "DIRECTORY AUDIT: PERMISSIONS AND DISK USAGE"
echo "----------------------------------------------------------"
echo "PATH | PERMISSIONS | OWNER | SIZE"
echo "----------------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if; then
        # Extract permissions (field 1) and owner (field 3) using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3":"$4}')
        # Calculate human-readable directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        
        echo "$DIR | $PERMS | $OWNER | $SIZE"
    else
        echo "$DIR | DIRECTORY NOT FOUND | N/A | N/A"
    fi
done

# Check if MySQL configuration directory is secured
if [ -d "/etc/mysql" ]; then
    echo "----------------------------------------------------------"
    echo "Audit Note: Configuration directory /etc/mysql is present."
    ls -ld "/etc/mysql"
