docker run --env-file ./variables.list -e S3_PATH=s3://tanuj108demo/lex/ -v /ebsvolume1/lex:/data:ro --rm s3demo;
