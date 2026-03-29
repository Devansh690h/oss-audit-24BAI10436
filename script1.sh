#!/bin/bash
# Script 1: System Identity Report
# Author: Devansh Singh Rathore 
# This script introduces the system environment and confirms the FOSS license.

# --- Variables ---
STUDENT_NAME="Devansh Singh Rathore"
SOFTWARE_CHOICE="MySQL 8.x"

# --- System Data Acquisition ---
KERNEL_VERSION=$(uname -r)
USER_NAME=$(whoami)
UPTIME_VAL=$(uptime -p)
OS_NAME=$(grep "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
CURRENT_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# --- Display Section ---
echo "=========================================================="
echo "          OPEN SOURCE SOFTWARE AUDIT: WELCOME             "
echo "=========================================================="
echo "Auditor Name   : $STUDENT_NAME"
echo "Software Choice: $SOFTWARE_CHOICE"
echo "----------------------------------------------------------"
echo "OS Distribution: $OS_NAME"
echo "Kernel Version : $KERNEL_VERSION"
echo "Logged-in User : $USER_NAME"
echo "System Uptime  : $UPTIME_VAL"
echo "Audit Timestamp: $CURRENT_TIME"
echo "----------------------------------------------------------"
echo "PHILOSOPHY NOTE: This operating system is released under"
echo "the GNU General Public License, ensuring your right to"
echo "run, study, share, and modify the core software."
echo "=========================================================="

