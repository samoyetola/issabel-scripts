#!/bin/bash

# Define an array of folder paths to delete
folders_to_delete=(
  "/home/Unlimited/01"
  "/home/Unlimited/02"
  "/home/Unlimited/03"
  "/home/Unlimited/04"
)

# Loop through the array and delete each folder
for folder in "${folders_to_delete[@]}"; do
  if [ -d "$folder" ]; then
    echo "Deleting folder: $folder"
    sudo rm -r "$folder"
    echo "Folder $folder Successfully deleted."
  else
    echo "Folder $folder does not exist."
  fi
echo "Script execution completed."

done
