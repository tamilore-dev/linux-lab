#!/bin/bash
while read -r line; do
	grep -i "error" <<< "$line"
done < /home/tamilore/logs/size
