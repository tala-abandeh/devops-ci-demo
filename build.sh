#! /bin/bash

set -e
chmod +x build.sh
# Define some path
SRC=./web
DST=/var/ww/html

# Check if deployment destination exists
if [ -d "$DST" ]; then
    echo "Deployment target exists: $DST"
    cp -r $SRC/* $DST
   
OUTPUT="$(date)"
# You must add following two lines before
# outputting data to the web browser from shell

else
    echo "Deployment target does not exist."
    exit 2
fi

