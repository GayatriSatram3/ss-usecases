#!/bin/bash

DIRECTORY="$HOME"
SIZE="+100M"

echo "Files larger than 100 MB:"
echo

find "$DIRECTORY" -type f -size "$SIZE" -exec ls -lh {} \;