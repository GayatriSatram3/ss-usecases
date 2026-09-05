#!/bin/bash

TEMP_DIR="$HOME/temp_files"
DAYS=7

echo "Cleaning temporary files older than $DAYS days..."

find "$TEMP_DIR" -type f -mtime +$DAYS -delete

echo "Temporary file cleanup completed."