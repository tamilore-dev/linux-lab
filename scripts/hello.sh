#!/bin/bash
echo "This is my $0 script"
echo

read -p "What is your name? " name
read -sp "Enter password: " password
sleep 3
echo
echo "Password Stored. "

echo "Hello, ${name:-Guest}!"
echo

echo "Today is: $(date)"
echo

echo "Calendar is:"
echo "$(cal)"
