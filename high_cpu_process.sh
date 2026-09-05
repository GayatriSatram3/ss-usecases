#!/bin/bash

THRESHOLD=50

echo "Processes using more than ${THRESHOLD}% CPU:"
echo

ps -eo pid,comm,%cpu --sort=-%cpu | awk -v threshold="$THRESHOLD" 'NR==1 || $3 > threshold'