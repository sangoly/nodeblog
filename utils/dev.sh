#!/bin/bash

PREFIX=$(dirname $0)/..
cd $PREFIX

while [ 1 ]
do
    ps x -u $USER | grep 'node' | awk '{print $1}' | xargs kill -9 > /dev/null  2>&1
    DEBUG=nodeblog:* ./bin/www
    
    echo ""
    for ((i=1;i<=4;i++))
    do 
        echo -n "$i " 
        sleep 1
    done
done
