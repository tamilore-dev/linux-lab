#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Please put in unit/units to check"
    exit 1
fi

for service in "$@"; do
    if systemctl is-active --quiet "$service"; then
        echo "[+] $service is running"
    else
        echo "[-] $service is inactive or not found"
    fi
done
