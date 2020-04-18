#! /bin/bash

set -e

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
script |
 echo "Content-type: text/html"
 echo ""
 echo "<html><head><title>Demo</title></head><body>"
 echo "Today is $OUTPUT <br>"
 echo "Current directory is $(pwd) <br>"
 echo "Shell Script name is $0"
 echo "</body></html>"
else
    echo "Deployment target does not exist."
    exit 2
fi

