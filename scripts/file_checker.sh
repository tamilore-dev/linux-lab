#!/bin/bash
if [[ -z $1  ]]; then
	echo "Usage: $0 <file_path>"
	exit 1
fi

file_name=$1

if [[ -f "$file_name" ]]; then
	echo "[+] Success: $file_name exists!"

else
	echo "[-] Error: $file_name does not exist."
fi
