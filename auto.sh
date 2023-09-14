#!/bin/bash

# Check if at least one argument (the script name) is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <script_name> [parameters...]"
    exit 1
fi

# Extract the script name from the first argument
script_name="$1"

# Check if the specified script exists
if [ ! -f "$script_name" ]; then
    echo "Error: Script '$script_name' not found."
    exit 1
fi

# Shift the first argument (script_name) out, so $@ contains only the parameters
shift

# Run the specified script with the remaining parameters
scripts/"$script_name" "$@"
