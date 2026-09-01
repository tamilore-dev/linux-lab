#!/bin/bash

# 1. Guard check: Ensure BOTH arguments are provided
if [[ -z "$1" || -z "$2" ]]; then
	echo "Usage: $0 <width> <length>"
	exit 1
fi

width="$1"
length="$2"

# 2. Guard check: Use REGEX to ensure both inputs contain ONLY numbers (0-9)
if [[ ! "$width" =~ ^[0-9]+$ || ! "$length" =~ ^[0-9]+$ ]]; then
	echo "[-] Error: Both width and length must be valid positive numbers!"
	exit 1
fi

# 3. Guard check: Ensure width and length are greater than 0
if (( width == 0 || length == 0 )); then
	echo "[-] Error: Width and length must be greater than 0!"
	exit 1
fi

# 4. Calculate area using $(( ... )) expansion
area=$(( width * length ))

# 5. Print output
echo "[+] Rectangle Area ($width x $length): $area"
