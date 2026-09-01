#!/bin/bash

while read -r line; do
    bin=$(grep -i "python" <<< "$line")
    echo "$bin"
done

# username=$(echo "$line" | cut -d: -f1)
#     home=$(echo "$line" | cut -d: -f6)
# 
#     echo "Username: $username | Home: $home"
