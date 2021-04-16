#!/bin/bash

meson \
  --prefix="${PREFIX}" \
  --libdir=lib \
  --sbindir=bin \
  -Dexamples=false \
  -Duseroot=false -Dudevrulesdir="${PREFIX}/lib/udev/rules.d" \
  build
ninja -C build/
ninja -C build/ install


# Install fusermount3 into sbin.
# See https://github.com/conda-forge/libfuse-feedstock/issues/13
mkdir -p "${PREFIX}/sbin"
mv "${PREFIX}/bin/fusermount3" "${PREFIX}/sbin/fusermount3"
