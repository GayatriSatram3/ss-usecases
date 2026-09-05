#!/bin/bash

DIRECTORY="$HOME/duplicate_test"

echo "Checking for duplicate files..."
echo

find "$DIRECTORY" -type f -exec md5sum {} \; | sort | uniq -w32 -D