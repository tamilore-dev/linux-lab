#!/bin/bash

phrase="Linux is fun"
tr '[:lower:]' '[:upper:]' <<< "$phrase"

read -r city country <<< "lagos Nigeria"
echo "$city, $country"
wc -c <<< "Tamilore"

read -r first rest <<< "one two three four"
echo "$first"
echo "$rest"

name="Gift"
cat << 'EOF'
Hi $name
EOF

cat > /tmp/test.conf << EOF
host=localhost
port=8080
EOF

cat << EOF
Total: $((2 + 3))
EOF

cat << EOF > /tmp/a.txt
