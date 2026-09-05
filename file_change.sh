#!/bin/bash

FILE="$HOME/config.txt"

if [ -f "$FILE" ]; then
    echo "File: $FILE"
    echo "Last modified:"
    stat -c "%y" "$FILE"
else
    echo "WARNING: File does not exist."
fi