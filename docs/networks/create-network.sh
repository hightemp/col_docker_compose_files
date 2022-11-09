#!/bin/bash

if [ "$1" == "" -o "$2" == "" ]; then
    echo "USAGE:"
    echo "  create_network.sh localhost_net wlp2s0"
    echo "----------------------------------------------------------"
    docker network ls
    exit 1
fi

docker network rm $1
docker network create \
    --driver=ipvlan \
    --subnet=192.168.31.0/24 \
    --ip-range=192.168.31.0/24 \
    --gateway=192.168.31.1 \
    -o parent=$2 \
    -o ipvlan_mode=l2 \
    $1

docker network ls