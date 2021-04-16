#!/usr/bin/env bash

export MOUNT_FUSE_PATH="${PREFIX}/bin"
export UDEV_RULES_PATH="${PREFIX}/etc/udev/rules.d"
export INIT_D_PATH="${PREFIX}/etc/init.d"

./configure \
  --prefix="${PREFIX}" \
  --enable-static=no \
  --sbindir="${PREFIX}/bin" \
;

make
make install

# Install fusermount into sbin.
# See https://github.com/conda-forge/libfuse-feedstock/issues/13
mkdir -p "${PREFIX}/sbin"
mv "${PREFIX}/bin/fusermount" "${PREFIX}/sbin/fusermount"
