#!/bin/bash

echo "hi, we are in upload.sh.......this script will upload the specified file/directory in the s3bucket"

/usr/local/bin/s3cmd sync --delete-removed "$DATA_PATH" "$S3_PATH"
