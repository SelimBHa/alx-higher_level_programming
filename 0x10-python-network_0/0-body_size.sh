#!/bin/bash

# Check if URL argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a request to the URL and get the size of the response body
size=$(curl -sI "$1" | grep -i '^Content-Length:' | awk '{print $2}')

# Display the size of the response body in bytes
echo "$size"
