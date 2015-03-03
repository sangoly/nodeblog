#!/bin/bash

PREFIX=$(dirname $0)/..
cd $PREFIX

while [ 1 ]
do
    # kill curr processes
    ps x -u $USER | egrep 'supervisor|node|grunt' | awk '{print $1}' | xargs kill -9 > /dev/null  2>&1
    # start new processes
    DEBUG=nodeblog:* supervisor ./bin/www &
    grunt watch 

    # if server is dead, re start it 4 seconds later
    echo ""
    for ((i=1;i<=4;i++))
    do 
        echo -n "$i " 
        sleep 1
    done
done
