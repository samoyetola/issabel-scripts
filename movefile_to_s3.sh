#!/bin/bash

# S3 bucket name and destination path
S3_BUCKET="callcenterarchive"
S3_DESTINATION_PATH="test/"

# Local directory containing files to be copied
LOCAL_DIR='/home/Unlimited/math/'

# This script will copy each file from the local directory to S3, and if the copy is successful, it will delete the local file.
for FILE in "$LOCAL_DIR"*
do
    if [ -f "$FILE" ]; then

                echo "this is $FILE"

        # Copy the file to S3
         aws s3 cp "$FILE" "s3://$S3_BUCKET/$S3_DESTINATION_PATH"

        # Check if the copy was successful
        if [ $? -eq 0 ]; then
            echo "File $FILE copied to S3 successfully."
            
            # Delete the local file after successful copy
            rm "$FILE"
            echo "File $FILE deleted from local directory."
        else
            echo "Error copying file $FILE to S3."
        fi
    fi
done

echo "Script execution completed."
