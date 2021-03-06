#!/bin/bash

TOP_DIR=$(cd $(dirname "$0") && pwd)
DEVSTACK_DIR=$HOME/devstack

git clone -b stable/liberty git://git.openstack.org/openstack-dev/devstack.git $DEVSTACK_DIR
cp -v $TOP_DIR/local.conf $DEVSTACK_DIR/local.conf
cp -v $TOP_DIR/99-demo.sh $DEVSTACK_DIR/extras.d/
