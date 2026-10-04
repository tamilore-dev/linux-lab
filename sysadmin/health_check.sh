#!/usr/bin/env bash
set -euo pipefail

host=$(hostname)
usage=$(df / | awk 'NR==2 {print $5+0}')
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

echo "--- CPU ---"
vmstat 1 2 | tail -1 | awk '{printf "CPU busy: %d%% | Disk wait: %d%% | Blocked: %d\n", $13+$14, $16, $2}'
cpu=$(vmstat 1 2 | tail -1 | awk '{print $13 + $14}')
if [ "$cpu" -gt "$cpu_threshold" ]; then
	
