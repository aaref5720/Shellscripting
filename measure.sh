#!/bin/bash

# Check if a file containing the code to measure is provided
if [ $# -lt 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File $filename not found"
  exit 1
fi

# Measure the execution time
start=$(date +%s.%N)
# Replace "command" with the command to run the code in the appropriate language
command=$(cat "$filename")
eval "$command"
end=$(date +%s.%N)

# Calculate the elapsed time
elapsed=$(echo "$end - $start" | bc)

# Print the elapsed time in seconds
echo "Elapsed time: $elapsed seconds"
