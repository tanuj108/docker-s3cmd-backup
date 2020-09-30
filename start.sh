#!/bin/bash

: ${S3_PATH:?"S3_PATH env variable is required"}
export DATA_PATH=${DATA_PATH:-/data/}


echo "hi, we are in start.sh.......this script will configure s3cmd config file with custom credentials"

echo "access_key = $ACCESS_KEY" >> /root/.s3cfg
echo "secret_key = $SECRET_KEY" >> /root/.s3cfg
echo "multipart_chunk_size_mb = $CHUNK_SIZE" >> /root/.s3cfg

exec /upload.sh

