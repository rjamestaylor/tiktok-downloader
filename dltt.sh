#!/bin/bash

# Define the input file
INPUT_FILE=~/Downloads/user_data_tiktok.json

# Create subfolders if they don't exist
mkdir -p public private

# Process the JSON data
jq -r '.[]| .Videos.VideoList| try .[]| .Link + "," + .Date + "," + .WhoCanView' "$INPUT_FILE" | while IFS=',' read -r link date who_can_view; do
    # Skip if the link or date is empty
    if [[ -z "$link" || -z "$date" ]]; then
        echo "Skipping invalid entry: $link, $date"
        continue
    fi

    # Determine the target directory
    if [[ "$who_can_view" == "Everyone" ]]; then
        TARGET_DIR="public"
    else
        TARGET_DIR="private"
    fi

    # Construct the filename
    FILENAME="${date}.mov"

    # Download the file
    echo "Downloading $link to $TARGET_DIR/$FILENAME"
    curl -s -o "$TARGET_DIR/$FILENAME" "$link"

    # Check if the download was successful
    if [[ $? -eq 0 ]]; then
        echo "Downloaded $FILENAME successfully."
    else
        echo "Failed to download $link"
    fi
done
