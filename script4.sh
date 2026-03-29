#!/bin/bash
# Script 4: Log File Analyzer
# This script reads logs line-by-line to identify critical events.
# Concepts: while-read loop, counter variables, command-line arguments.

# Use $1 for the log file path, default to /var/log/mysql/error.log
LOGFILE=${1:-"/var/log/mysql/error.log"}
# Use $2 for the search keyword, default to 'error'
KEYWORD=${2:-"error"}
COUNT=0

# Security check: Does the file exist?
if [! -f "$LOGFILE" ]; then
    echo "Critical Error: Log file $LOGFILE not accessible."
    exit 1
fi

echo "Analyzing $LOGFILE for the term '$KEYWORD'..."

# Reading the file line-by-line using a while loop
while IFS= read -r LINE; do
    # Search for the keyword case-insensitively
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        # Keep the last matching line for the summary
        LAST_MATCH="$LINE"
    fi
done < "$LOGFILE"

# Summary output
echo "----------------------------------------------------------"
echo "LOG SUMMARY"
echo "----------------------------------------------------------"
echo "Keyword '$KEYWORD' instances found: $COUNT"
if; then
    echo "Last detected match:"
    echo ">> $LAST_MATCH"
fi
echo "----------------------------------------------------------"

# Final audit command: show last 5 errors using tail and grep
echo "Recent context (Last 5 matches):"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
