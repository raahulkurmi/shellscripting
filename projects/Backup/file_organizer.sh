#!/bin/bash

# Directory watcher script to organize files by type
WATCH_DIR="." # Current directory or the direct path of the directory

# Folder names for organization
IMAGE_DIR="Images"
VIDEO_DIR="Videos"
DOCUMENT_DIR="Documents"
OTHER_DIR="Others"

# Create directories if they do not exist
mkdir -p "$IMAGE_DIR" "$VIDEO_DIR" "$DOCUMENT_DIR" "$OTHER_DIR"

# Function to organize files
organize_files() {
    for file in "$WATCH_DIR"/*; do
        if [[ -f "$file" ]]; then
            case "${file##*.}" in  #to check the extension of the file
                jpg|jpeg|png|gif)    #these are the extension 
                    mv "$file" "$IMAGE_DIR/" #moving file to particular directory
                    ;;
                mp4|mkv|avi)
                    mv "$file" "$VIDEO_DIR/"
                    ;;
                pdf|doc|txt)
                    mv "$file" "$DOCUMENT_DIR/"
                    ;;
                *)
                    mv "$file" "$OTHER_DIR/"
                    ;;
            esac
        fi
    done
}

# Watch for new file creation using fswatch
#while read--read will read the outputfrom the fswatch and put it in new file
# | is pipe command to redirect the output of fswatch to while as an input 
#if new file is detected orgainize file funtion will be called again


fswatch "$WATCH_DIR" | while read NEW_FILE; do 
    echo "Detected new file: $NEW_FILE"
    organize_files
done

