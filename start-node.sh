#!/bin/bash

source install/common.sh

check_usage $# 4 "Usage: $0 <VERSION> <HOSTNAME> <LISTEN> <SEEDS>"

VERSION=$1
HOSTNAME=$2
LISTEN=$3
SEEDS=$4


test_image $VERSION

sudo docker run -d -h $HOSTNAME -t klaviyo/cassandra:$VERSION /usr/bin/start-cassandra $LISTEN $SEEDS

