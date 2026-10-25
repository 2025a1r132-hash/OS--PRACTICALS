#!/bin/bash

# File Manipulator Program

if [ $# -lt 2 ]; then
    echo "Usage: $0 <source_file> <destination_file>"
    exit 1
fi

source_file="$1"
destination_file="$2"

if [ ! -f "$source_file" ]; then
    echo "Error: Source file does not exist."
    exit 1
fi

if cp -- "$source_file" "$destination_file"; then
    echo "File copied successfully."
    echo "Source: $source_file"
    echo "Destination: $destination_file"
else
    echo "Error: File copy failed."
    exit 1
fi
