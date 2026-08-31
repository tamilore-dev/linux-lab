#!/bin/bash
if [[ -z "$1" ]]; then
	echo "Usage: $0 <age>"
	exit 1
fi

if (( "$1" >= 18 )); then
	echo "[+] Adult (Age: $1)"
else
	echo "[-] Minor (Age: $1)"
fi
