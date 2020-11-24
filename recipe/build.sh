#!/usr/bin/env bash

export MOUNT_FUSE_PATH=${PREFIX}/bin
export UDEV_RULES_PATH=${PREFIX}/etc/udev/rules.d
export INIT_D_PATH=${PREFIX}/etc/init.d

./configure \
  --prefix="${PREFIX}" \
  --sbindir=${PREFIX}/bin

make

make install
