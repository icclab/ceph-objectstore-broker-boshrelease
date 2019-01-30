# Ceph Object Storage Broker Bosh Release

This is the BOSH release of the broker found [here](https://github.com/icclab/ceph-objectstore-broker).

## Prerequisites

Before deploying to a platform, you need to provide the required details about your Ceph installation. Specifically you will need a
[Ceph object gateway](http://docs.ceph.com/docs/master/radosgw/) setup. The broker will use the admin user on the gateway to manage users there as required to operate the
service, and so it requires a number of variables including the gateway's endpoint and access keys for the user.

To provide the required information you will need a file called `vars-file.yml`. A template for this file called `vars-file-template.yml` is available, and so can simply
be copied, renamed and then the details filled in.

## Deployment

Once you have your `vars-file.yml` setup you are ready to deploy, however, you might want to change the broker plans and service settings, which you can change in the `ceph-objectstorage-broker.yml` file. Please note that the `displayName` and `quotaMB` fields in the metadata of each plan are **required**.

Once you are ready to deploy you can do so by `./deploy.sh my-deployment-name`. Remember that the supplied deployment name must match the name in the manifest.