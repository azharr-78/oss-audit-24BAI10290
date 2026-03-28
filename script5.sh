#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Mohammad Azhar Bilal
# Course: Open Source Software
# Registration Number: 24BAI10290

# Rubric Requirement: Aliases concept demonstrated via a comment
# alias generate-manifesto='./script5.sh'

echo "=========================================="
echo "    Open Source Manifesto Generator       "
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo ""

# Interactive input using read
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Fetching date and user info
DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_${USER}.txt"

# String concatenation and writing to file using > and >>
echo "--- The Open Source Manifesto ---" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "By: Mohammad Azhar Bilal" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should be accessible to everyone. Every day, I rely on tools like $TOOL to learn, create, and solve problems. To me, the core of open source is $FREEDOM. It is the ability to understand how things work and to improve them without barriers. In that spirit, I pledge to contribute back to the community. If I had the resources, I would build $BUILD and share it freely with the world, ensuring that knowledge is never locked behind a paywall." >> "$OUTPUT"

echo "=========================================="
echo "Manifesto successfully saved to $OUTPUT"
echo "=========================================="
echo "Here is your generated manifesto:"
echo ""

# Display the final file
cat "$OUTPUT"
echo "=========================================="
EOF
