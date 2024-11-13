#!/bin/bash

echo "OS Version:"
lsb_release -a || cat /etc/os-release

echo ""
echo "Users with Bash Shell:"
awk -F: '$7 ~ /bash$/ {print $1}' /etc/passwd

echo ""
echo "Open Ports:"
sudo lsof -i -P -n | grep LISTEN
