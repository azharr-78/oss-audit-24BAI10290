#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Mohammad Azhar Bilal
# Course: Open Source Software
# Registration Number: 24BAI10290

PACKAGE="python3"

echo "=========================================="
echo "      FOSS Package Inspector              "
echo "=========================================="
echo "Inspecting package: $PACKAGE"
echo "------------------------------------------"

# Check if package is installed (using dpkg for Ubuntu/Debian)
if dpkg -s "$PACKAGE" &>/dev/null; then
    echo "Status: $PACKAGE is installed."
    echo " "
    echo "--- Package Details ---"
    # Extracting Version and Description lines
    dpkg -s "$PACKAGE" | grep -E '^(Version|Description):'
else
    echo "Status: $PACKAGE is NOT installed."
fi

echo "------------------------------------------"
# Case statement to print a philosophy note based on the package name
case $PACKAGE in
    python3|python) 
        echo "Philosophy: Python - A language shaped entirely by community." 
        ;;
    apache2|httpd) 
        echo "Philosophy: Apache - The web server that built the open internet." 
        ;;
    mysql-server|mysql) 
        echo "Philosophy: MySQL - Open source at the heart of millions of apps." 
        ;;
    vlc) 
        echo "Philosophy: VLC - Plays anything - built by students in Paris." 
        ;;
    *) 
        echo "Philosophy: No specific philosophy note found for this software." 
        ;;
esac
echo "=========================================="
