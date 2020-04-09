#! /usr/bin/env zsh

# Synchronize stage with toolchain
cp -r stage/armv7-cpi/include/* armv7-cpi-linux-gnueabihf/armv7-cpi-linux-gnueabihf/sysroot/usr/include
cp -r stage/armv7-cpi/lib/* armv7-cpi-linux-gnueabihf/armv7-cpi-linux-gnueabihf/sysroot/usr/lib
