#! /bin/bash

set -e

# Define some path
SRC=./web
DST=/var/ww/html

# Check if deployment destination exists
if [ -d "$DST" ]; then
    echo "Deployment target exists: $DST"
    cp -r $SRC/* $DST
else
    echo "Deployment target does not exist."
    exit 2
fi

TALA="$(cat -)"

echo "Date: $(date)"
echo "Content-Length: 18"
echo "Content-Type: text/json"
echo ""
echo "{\"success\":\"true\"}"
