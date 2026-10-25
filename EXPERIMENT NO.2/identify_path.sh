#!/bin/bash

# Identify the type of path

if [ $# -eq 0 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

path="$1"

if [ -f "$path" ]; then
    echo "$path is a regular file."
elif [ -d "$path" ]; then
    echo "$path is a directory."
elif [ -L "$path" ]; then
    echo "$path is a symbolic link."
elif [ -e "$path" ]; then
    echo "$path exists, but is not a regular file or directory."
else
    echo "$path does not exist."
fi
