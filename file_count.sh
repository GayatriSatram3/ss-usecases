#!/bin/bash

DIRECTORY="$HOME"

COUNT=$(find "$DIRECTORY" -type f | wc -l)

echo "Total number of files: $COUNT"