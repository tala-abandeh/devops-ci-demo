#! /bin/bash

set -e

# Define some path
SRC=./web
DST=/var/ww/html

# Check if deployment destination exists
if [ -d "$DST" ]; then
    echo "Deployment target exists: $DST"
    cp -r $SRC/* $DST
    echo "Tests started at…"
date "+%H:%M:%S"
else
    echo "Deployment target does not exist."
    exit 2
fi
