#!/bin/bash

PROCESS="nginx"

if pgrep "$PROCESS" > /dev/null; then
    echo "$PROCESS is running."
else
    echo "$PROCESS is not running. Restarting..."

    if sudo systemctl restart "$PROCESS"; then
        echo "$PROCESS restarted successfully."
    else
        echo "ERROR: Failed to restart $PROCESS."
    fi
fi