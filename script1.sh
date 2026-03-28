#!/bin/bash
# Script 1: System Identity Report
STUDENT_NAME="Mohammad Azhar Bilal"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%A, %d %B %Y %T')
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO=$(uname -s)
fi
OS_LICENSE="GNU General Public License v2 (GPLv2)"

echo "=========================================="
echo "          The Open Source Audit           "
echo "=========================================="
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home Dir: $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "License : The core OS is covered by the $OS_LICENSE"
echo "=========================================="
