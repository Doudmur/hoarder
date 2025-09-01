#!/bin/bash

# Check if argument is empty
if [ -z "$1" ]; then
    echo "Usage: $0 <directory> [archive_name.tar.gz]"
    echo "Error: No directory provided!"
    exit 1
fi

# Directory you want to archive (pass as first argument)
SOURCE_DIR="$1"

# Name of the output archive (second argument or default with timestamp)
ARCHIVE_NAME="${2:-backup_$(date +%Y%m%d_%H%M%S).tar.gz}"

# Create tar.gz file
tar -czvf "$ARCHIVE_NAME" "$SOURCE_DIR"

echo "Archive created: $ARCHIVE_NAME"

