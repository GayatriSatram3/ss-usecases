#!/bin/bash

THRESHOLD=80

MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

if [ "$MEMORY_USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Memory usage is high: ${MEMORY_USAGE}%"
else
    echo "Memory usage is normal: ${MEMORY_USAGE}%"
fi