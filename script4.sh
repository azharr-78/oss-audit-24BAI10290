#!/bin/bash
# Script 4: Log File Analyzer
# Author: Mohammad Azhar Bilal
# Course: Open Source Software
# Registration Number: 24BAI10290

# Default to /var/log/dpkg.log since WSL might not have a busy syslog
LOGFILE=${1:-"/var/log/dpkg.log"}
# Default keyword to search for
KEYWORD=${2:-"install"}
COUNT=0

echo "=========================================="
echo "          Log File Analyzer               "
echo "=========================================="
echo "Analyzing: $LOGFILE"
echo "Searching for keyword: '$KEYWORD'"
echo "------------------------------------------"

# Check if file exists and is readable
if [ ! -f "$LOGFILE" ] || [ ! -r "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or not readable."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please provide a different log file."
    exit 1
fi

# Read line by line and count occurrences using a while loop
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo " "
echo "--- Last 5 Matching Lines ---"
# Using tail and grep to show the last 5 occurrences
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "=========================================="
