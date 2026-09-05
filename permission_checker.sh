#!/bin/bash

DIRECTORY="$HOME"

echo "File Permissions:"
echo

find "$DIRECTORY" -maxdepth 1 -type f -exec ls -l {} \;