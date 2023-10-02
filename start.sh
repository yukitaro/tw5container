#!/bin/sh

# If the port is not specified on the commandline, try to start on :8080 
sudo docker run -d -p ${1:-8080}:8080 -v $(pwd)/.tw/kennyswiki:/tiddlywiki/kennyswiki tiddly-wiki

