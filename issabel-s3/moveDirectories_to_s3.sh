#!/bin/bashi
# S3 bucket name and destination path
S3_BUCKET="callcenterarchive"
S3_DESTINATION_PATH="test/"

# Local directory to be copied
LOCAL_DIR="/home/Unlimited/"

# Copy the entire directory to S3
 aws s3 cp "$LOCAL_DIR" "s3://$S3_BUCKET/$S3_DESTINATION_PATH" --recursive

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Directory $LOCAL_DIR copied to S3 successfully."

    # Delete the local directory and its contents after successful copy
    sudo rm -r "$LOCAL_DIR"
    echo "Directory $LOCAL_DIR deleted from the local file system."
else
    echo "Error copying directory $LOCAL_DIR to S3."
fi

echo "Script execution completed."
