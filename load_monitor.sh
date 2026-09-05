#!/bin/bash

THRESHOLD=4.0

LOAD=$(uptime | awk -F'load average:' '{print $2}' | cut -d',' -f1)

if (( $(echo "$LOAD >= $THRESHOLD" | bc -l) )); then
    echo "WARNING: Load average is high: $LOAD"
else
    echo "Load average is normal: $LOAD"
fi