#!/usr/bin/env bash

###-----[ NAVIGATING TO SCRIPT DIRECTORY ]-----###
cd "$(dirname "$0")" || exit 1

opera_path="/lib/x86_64-linux-gnu/opera"
script_path="$(pwd)"
backup_file="$script_path/libffmpeg.so.original"

###-----[ CHECKING IF OPERA IS INSTALLED ]-----###
if [[ ! -d "$opera_path" ]]; then
    echo "Opera not found at: $opera_path"
    echo "Please install Opera and try again."
    exit 1
fi

echo "Opera detected at: $opera_path"
echo

###-----[ DISPLAYING ACTION MENU ]-----###
echo -e "1. Apply Patch\n2. Revert Patch"
read -p "Select option [1/2]: " input

if [[ "$input" -eq 1 ]]; then

    ###-----[ CREATING BACKUP IF NOT ALREADY PRESENT ]-----###
    if [[ ! -f "$backup_file" ]]; then
        echo "Creating backup..."
        sudo mv "$opera_path/libffmpeg.so" "$backup_file"
    else
        echo "Backup already exists. Continuing..."
    fi

    ###-----[ COPYING PATCHED FILE TO OPERA DIRECTORY ]-----###
    echo "Applying patch..."
    sudo cp "libffmpeg.so" "$opera_path/libffmpeg.so"
    echo "Patch applied successfully."
    read -p "Press Enter to exit"

elif [[ "$input" -eq 2 ]]; then

    ###-----[ RESTORING BACKUP IF AVAILABLE ]-----###
    if [[ ! -f "$backup_file" ]]; then
        echo "No backup found. Cannot revert."
        exit 1
    else
        echo "Reverting to original..."
        sudo rm "$opera_path/libffmpeg.so"
        sudo mv "$backup_file" "$opera_path/libffmpeg.so"
        echo "Revert completed."
    fi
    read -p "Press Enter to exit"

else
    ###-----[ HANDLING INVALID INPUT ]-----###
    echo "Invalid selection."
    read -p "Press Enter to exit"
fi
