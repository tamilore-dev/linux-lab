#!/bin/bash
if [[ -z "$1" ]]; then
	echo "Usage: $0 <script_name>"
	exit 1
fi

if [[ -f "$1" && -x "$1"  ]]; then
	echo "[+] '$1' exists and is executable!"
else
	echo "[-] Error: '$1' does not exist or is not executable."
fi
