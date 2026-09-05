#!/bin/bash

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -gt 80 ]; then
    echo "WARNING: Disk usage is ${usage}%"
else
    echo "Disk usage is normal: ${usage}%"
fi