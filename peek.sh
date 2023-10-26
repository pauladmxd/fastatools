#!/bin/bash

# Check if an input file is provided as a command-line argument
if [ -z "$1" ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Input file '$input_file' does not exist."
  exit 1
fi

# Read the first three lines
head -n 3 "$input_file"

# Print the "..." line
echo "..."

# Read the last three lines
tail -n 3 "$input_file"

