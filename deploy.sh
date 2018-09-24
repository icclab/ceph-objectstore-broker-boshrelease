#!/bin/bash

if [ $# = 0 ]; then
    echo "Please input a name for the deployment."
    exit
fi

bosh deploy "ceph-objectstorage-broker.yml" -d "$1" \
--vars-file="vars-file.yml"