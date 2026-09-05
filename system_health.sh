#!/bin/bash

DISK=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)
MEMORY=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "===== SYSTEM HEALTH CHECK ====="
echo "Disk Usage:   ${DISK}%"
echo "CPU Usage:    ${CPU}%"
echo "Memory Usage: ${MEMORY}%"
echo

if [ "$DISK" -ge 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "Disk usage is normal."
fi

if [ "$CPU" -ge 80 ]; then
    echo "WARNING: CPU usage is high!"
else
    echo "CPU usage is normal."
fi

if [ "$MEMORY" -ge 80 ]; then
    echo "WARNING: Memory usage is high!"
else
    echo "Memory usage is normal."
fi