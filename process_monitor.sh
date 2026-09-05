#!/bin/bash

PROCESS="nginx"

if pgrep "$PROCESS" > /dev/null; then
    echo "$PROCESS process is running."
else
    echo "WARNING: $PROCESS process is not running!"
fi