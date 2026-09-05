#!/bin/bash

DIRECTORY="$HOME/Downloads"

mkdir -p "$DIRECTORY/Images"
mkdir -p "$DIRECTORY/Documents"
mkdir -p "$DIRECTORY/Text"
mkdir -p "$DIRECTORY/Music"

for FILE in "$DIRECTORY"/*; do

    if [ -f "$FILE" ]; then

        case "$FILE" in
            *.jpg|*.jpeg|*.png)
                mv "$FILE" "$DIRECTORY/Images/"
                ;;
            *.pdf|*.doc|*.docx)
                mv "$FILE" "$DIRECTORY/Documents/"
                ;;
            *.txt)
                mv "$FILE" "$DIRECTORY/Text/"
                ;;
            *.mp3|*.wav)
                mv "$FILE" "$DIRECTORY/Music/"
                ;;
        esac

    fi

done

echo "Files organized successfully."