#! /bin/bash

meson \
  --prefix="${PREFIX}" \
  --libdir=lib \
  --sbindir=bin \
  -Dexamples=false \
  -Duseroot=false -Dudevrulesdir="${PREFIX}/lib/udev/rules.d" \
  build
ninja -C build/
ninja -C build/ install
