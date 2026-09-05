#!/bin/bash

ZOMBIES=$(ps aux | awk '$8 ~ /Z/ {count++} END {print count+0}')

if [ "$ZOMBIES" -gt 0 ]; then
    echo "WARNING: $ZOMBIES zombie process(es) found!"
else
    echo "No zombie processes found."
fi