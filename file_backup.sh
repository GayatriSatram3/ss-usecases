#!/bin/bash

SOURCE="$HOME/config.txt"
BACKUP="$HOME/config.txt.backup"

if [ -f "$SOURCE" ]; then
    cp "$SOURCE" "$BACKUP"
    echo "Backup created successfully."
    echo "Backup file: $BACKUP"
else
    echo "ERROR: Source file does not exist."
fi