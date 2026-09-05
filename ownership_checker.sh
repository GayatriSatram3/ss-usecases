#!/bin/bash

DIRECTORY="$HOME"

echo "File Ownership:"
echo

find "$DIRECTORY" -maxdepth 1 -type f -exec ls -l {} \;