#!/usr/bin/env bash
set -euo pipefail
echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >&2 

greet() {
    echo "Hello, $1!"
}

if [[ -z "$1"  ]]; then
	echo "Usage: 0$ <string>"
	exit 1
fi
greet "$1"

if grep -q 'root' /etc/passwd; then
    echo 'root user found'
fi
