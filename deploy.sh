#!/bin/bash

bosh deploy "ceph-objectstorage-broker.yml" -d "ceph-objectstorage-broker" \
--vars-file="vars-file.yml"