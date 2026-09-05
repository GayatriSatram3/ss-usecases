#!/bin/bash

echo "=============================="
echo "    OPERATING SYSTEM INFO"
echo "=============================="

echo "OS:          $(grep '^PRETTY_NAME=' /etc/os-release | cut -d'"' -f2)"
echo "Kernel:      $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Hostname:    $(hostname)"
echo "User:        $(whoami)"
echo "Uptime:      $(uptime -p)"

echo "=============================="