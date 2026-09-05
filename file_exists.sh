#!/bin/bash

FILE="$HOME/config.txt"

if [ -f "$FILE" ]; then
    echo "File exists: $FILE"
else
    echo "WARNING: File does not exist: $FILE"
fi