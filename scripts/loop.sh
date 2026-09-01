#!/bin/bash
count=1
while (( count <= 5 )); do
    echo "$count"
    ((count++))
done

while read -r line; do
    echo "$line"
done < /etc/passwd
