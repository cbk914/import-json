#!/bin/bash

# Check if an output file name is provided
if [ -z "$1" ]; then
    echo "Error: output file name is required" >&2
    exit 1
fi

output_file="$1"
output_clean_file="${output_file%.*}-clean.txt"

# Remove "URL: " and "Response code: " from the output file
# and write the cleaned URLs to a new file
grep -oP '(?<=URL: ).*(?= Response Code:)' "$output_file" > "$output_clean_file"

# Confirm that the output file was cleaned
echo "Output file cleaned and saved as $output_clean_file"
