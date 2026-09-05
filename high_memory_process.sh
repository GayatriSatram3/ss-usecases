#!/bin/bash

THRESHOLD=20

echo "Processes using more than ${THRESHOLD}% memory:"
echo

ps -eo pid,comm,%mem --sort=-%mem | awk -v threshold="$THRESHOLD" 'NR==1 || $3 > threshold'
