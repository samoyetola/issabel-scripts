#!/bin/bash
# S3 bucket name and destination path
S3_BUCKET="callcenterarchive"
S3_DESTINATION_PATH="audio_call_log/2023/07/"

# Local directory to be copied
LOCAL_DIR="/var/spool/asterisk/monitor/2023/07/"

# Copy the entire directory to S3
 aws s3 cp "$LOCAL_DIR" "s3://$S3_BUCKET/$S3_DESTINATION_PATH" --recursive

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Directory $LOCAL_DIR copied to S3 successfully."
    
else
    echo "Error copying directory $LOCAL_DIR to S3."
fi

echo "Script execution completed."

