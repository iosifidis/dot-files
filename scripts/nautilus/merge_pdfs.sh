#!/bin/sh
CLEANED_FILE_PATHS=$(echo $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS | sed 's,.pdf /home/,.pdf\\n/home/,g')
echo $CLEANED_FILE_PATHS | bash -c 'IFS=$'"'"'\n'"'"' read -d "" -ra x;pdfunite "${x[@]}" merged.pdf'
