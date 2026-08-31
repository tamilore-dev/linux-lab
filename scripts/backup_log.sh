#!/bin/bash

# 1. Check if exactly 2 arguments were provided
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <source_file> <target_dir>"
    exit 1
fi

source_file="$1"
target_dir="$2"

# 2. Check if the source file exists and is a regular file
if [[ ! -f "$source_file" ]]; then
    echo "Error: Source file '$source_file' does not exist."
    exit 1
fi

# 3. Create target directory if it does not exist
if [[ ! -d "$target_dir" ]]; then
    mkdir -p "$target_dir"
fi

# 4. Perform copy and check exit status ($?)
cp "$source_file" "$target_dir/"

if [[ $? -eq 0 ]]; then
    echo "[+] Successfully backed up '$source_file' to '$target_dir/'"
else
    echo "[-] Failed to back up '$source_file'"
    exit 1
fi
