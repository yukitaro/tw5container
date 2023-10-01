#!/bin/sh

sudo docker run -d -p 8080:8080 -v $(pwd)/.tw/kennyswiki:/tiddlywiki/kennyswiki tiddly-wiki

