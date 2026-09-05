#!/bin/bash

FAILED=$(grep -i "failed password" /var/log/auth.log 2>/dev/null | wc -l)

if [ "$FAILED" -gt 0 ]; then
    echo "WARNING: $FAILED failed login attempt(s) detected."
else
    echo "No failed login attempts found."
fi
