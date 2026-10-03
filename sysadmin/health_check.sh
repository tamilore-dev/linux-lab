#!/usr/bin/env bash
set -euo pipefail
set -x          # on: bash now prints each command before running it
echo "hello"
set +x          # off
echo "hello"



host=$(hostname)
usage=$(df / --output=pcent | tail -1 | tr -d ' %')
threshold=80

echo "===== System Health Report ====="
echo "Date:     $(date)"
echo -e "Hostname: $host\n"

echo "--- Disk usage ---"
df -h -x tmpfs -x devtmpfs
echo

if [[ "$usage" -gt "$threshold" ]]; then
    echo "WARNING: root disk is ${usage}% full" >&2
    exit 1
fi
    echo -e "Root disk OK (${usage}% used)\n"



echo "--- Memory ---"
free -h
