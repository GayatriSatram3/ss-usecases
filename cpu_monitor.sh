#!/bin/bash

THRESHOLD=85

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)

if [ "$CPU_USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: CPU usage is high: ${CPU_USAGE}%"
else
    echo "CPU usage is normal: ${CPU_USAGE}%"
fi