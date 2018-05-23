#!/usr/bin/env bash

# get file size; eg: sizeof a.txt fsize;  echo "sizeof a.txt :$fsize Bytes"
sizeof() {
    dest=$1
    #echo "calc $dest size"
    if [ ! -f $dest ]; then
        eval $2=0
    else
        eval $2=`stat -c%s $dest`
    fi
}


