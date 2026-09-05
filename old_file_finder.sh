#!/bin/bash

DIRECTORY="$HOME"
DAYS=30

echo "Files older than $DAYS days:"
echo

find "$DIRECTORY" -type f -mtime +$DAYS