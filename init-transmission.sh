#!/bin/bash
set -e
echo -e "\033[1mStarting Transmission...\033[0m"
/etc/init.d/transmission-daemon start
echo -e "\033[1mEnjoy Transmission! http://localhost:9091\033[0m"
