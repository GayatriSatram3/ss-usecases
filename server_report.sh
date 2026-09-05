#!/bin/bash

echo "================================"
echo "       SERVER RESOURCE REPORT"
echo "================================"

echo "Hostname: $(hostname)"
echo "Date:     $(date)"
echo "Uptime:   $(uptime -p)"
echo

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo "================================"