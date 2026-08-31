#!/bin/bash
if [[ -z "$1" ]]; then
	echo "Usage: $0 <port_number>"
	exit 1
fi

if (( "$1" >= 1024 && "$1" <= 65535 )); then
	echo "[+] Port $1 is a valid unprivileged port."
else
	echo "[-] Error: Port $1 is outside the valid range (1024-65535)."
fi
