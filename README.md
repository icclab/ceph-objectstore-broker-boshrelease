# Ceph Object Storage Broker Bosh Release

This is the BOSH release of the broker found [here](https://github.com/icclab/ceph-objectstore-broker).

## Prerequisites

Before deploying to a platform, you need to provide the required details about your Ceph installation. Specifically you will need a
[Ceph object gateway](http://docs.ceph.com/docs/master/radosgw/) setup. The broker will use the admin user on the gateway to manage users there as required to operate the
service, and so it requires a number of variables including the gateway's endpoint and access keys for the user.

To provide the required information you will need a file called `vars-file.yml`. A template for this file called `vars-file-template.yml` is available, and so can simply
be copied, renamed and then the details filled in.

Lastly, you will need [Go](https://golang.org/project/) installed as its used in the deployment script and in case you want to build yourself or run the integration tests.
The broker has been developed with [Go V1.10.1](https://golang.org/doc/go1.10). It should theoretically work with older releases, but keep in mind that is not verified.

## Deployment

Once you have your `vars-file.yml` setup you are ready to deploy, however, you might want to change the broker plans and service settings, which you can change in the
`ceph-objectstorage-broker.yml` file. Please note that the `displayName` and `quotaMB` fields in the metadata of each plan are **required**.

You are also recommended to ensure the source code of the broker is updated to the latest version, which you can do by running `git submodule update --remote`.
Once you are ready to deploy you can do so by `./deploy.sh my-deployment-name`.