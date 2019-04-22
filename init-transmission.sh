#!/bin/bash
set -e
echo "Starting Transmission..."
/etc/init.d/transmission-daemon start
echo "Enjoy Transmission! http://localhost:9091"
