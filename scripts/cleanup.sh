#!/bin/bash

# Cleanup script to remove temporary files and resources

# Define directories to clean
TEMP_DIRS=("temp" "logs" "build")

# Remove temporary directories
for dir in "${TEMP_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "Removing directory: $dir"
        rm -rf "$dir"
    else
        echo "Directory not found: $dir"
    fi
done

# Remove specific temporary files if they exist
TEMP_FILES=("*.tmp" "*.log")

for file in "${TEMP_FILES[@]}"; do
    echo "Removing files matching pattern: $file"
    rm -f $file
done

echo "Cleanup completed."