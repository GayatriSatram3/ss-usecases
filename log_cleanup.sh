#!/bin/bash

LOG_DIR="$HOME/test_logs"
DAYS=7

echo "Cleaning log files older than $DAYS days..."

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -delete

echo "Log cleanup completed."