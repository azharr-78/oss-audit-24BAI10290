#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Mohammad Azhar Bilal
# Course: Open Source Software
# Registration Number: 24BAI10290

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
PYTHON_DIR="/etc/python3"

echo "=========================================="
echo "        Directory Audit Report            "
echo "=========================================="

# Loop through standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group using ls -ld and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size using du (suppressing error messages)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        # Add spacing for clean output
        printf "%-10s => Permissions: %-25s | Size: %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "------------------------------------------"
echo "Checking Python Configuration Directory:"
if [ -d "$PYTHON_DIR" ]; then
    PY_PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1, $3, $4}')
    echo "$PYTHON_DIR => Permissions: $PY_PERMS"
else
    echo "Python config directory ($PYTHON_DIR) not found."
fi
echo "=========================================="
