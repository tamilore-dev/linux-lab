#!/bin/bash

while read -r line; do
    username=$(echo "$line" | cut -d: -f1)
    home=$(echo "$line" | cut -d: -f6)

    echo "Username: $username | Home: $home"
done < /etc/passwd
