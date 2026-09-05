#!/bin/bash

SOURCE="$HOME/project"
BACKUP="$HOME/project_backup.tar.gz"

if [ -d "$SOURCE" ]; then
    tar -czf "$BACKUP" "$SOURCE"
    echo "Directory backup created successfully."
    echo "Backup: $BACKUP"
else
    echo "ERROR: Directory does not exist."
fi