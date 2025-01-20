#!/bin/bash

SOURCE_DIR="." #you can manually insert the path
BACKUP_DIR="Backup"
HASH_FILE="$BACKUP_DIR/directory_hash.txt"

#if backup directory doesn't exist create directory
mkdir -p "BACKUP_DIR"

# Calculate hash of the source directory
current_hash=$(find "$SOURCE_DIR" -type f -exec sha256sum {} + | sha256sum | awk '{ print $1 }')

# Check if the hash file exists and compare
if [[ -f "$HASH_FILE" && "$(cat "$HASH_FILE")" == "$current_hash" ]]; then
    echo "No changes detected, no backup needed."
else
    echo "Changes detected, backing up..."
    # Create backup and update hash
    rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/"
    echo "$current_hash" > "$HASH_FILE"
fi

