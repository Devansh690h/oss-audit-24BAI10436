#!/bin/bash
# Script 2: FOSS Package Inspector
# This script audits the installation of specific FOSS packages.
# Concepts: if-then-else, case statement, package manager integration.

# Target package (usually mysql-server on Ubuntu/Debian)
PACKAGE="mysql-server"

echo "Auditing package status for: $PACKAGE"

# Use dpkg (Debian) or rpm (RedHat) to check installation
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo " $PACKAGE is currently installed."
    # Extract version information and summarize the license
    dpkg -s "$PACKAGE" | grep -E 'Version|Section'
else
    echo " $PACKAGE is not installed on this host."
fi

echo "----------------------------------------------------------"
# Case statement to provide a philosophical insight
case $PACKAGE in
    "mysql-server")
        echo "Insight: MySQL represents the democratization of data storage."
        ;;
    "apache2"|"httpd")
        echo "Insight: Apache: The web server that built the open internet."
        ;;
    "vlc")
        echo "Insight: VLC: Proof that community labor can outperform industry titans."
        ;;
    "git")
        echo "Insight: Git: The tool built for decentralized collaboration."
        ;;
    *)
        echo "Insight: Every FOSS package is a building block for digital freedom."
        ;;
esac
echo "----------------------------------------------------------"
