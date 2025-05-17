#!/bin/bash

# Check if filename was passed as argument
if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_passwd_file>"
  exit 1
fi

# Extract usernames with /bin/bash as their shell
awk -F: '$7 == "/bin/bash" { print $1 }' "$1"
