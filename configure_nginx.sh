#!/bin/bash

NGINX_DIR="nginx-1.10.2/"
# Use absolute paths; nginx depends on these while running

ROOT_DIR=`pwd`
OUTPUT_DIR="$ROOT_DIR/build"

cd $NGINX_DIR || { echo "Could not enter directory: $NGINX_DIR"; exit 1; }
./configure --prefix=$OUTPUT_DIR --add-module=$MODULE_PROGRESS_BAR || { echo "./configure failed!"; exit 1; }

echo .
echo "nginx configuration finished!"
echo "To compile nginx, run make in: $NGINX_DIR"
