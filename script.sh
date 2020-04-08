# To execute this go in stage folder
# copy include from stage to toolchain
cp -r include/* ../../armv7-cpi-linux-gnueabihf/armv7-cpi-linux-gnueabihf/sysroot/usr/include

# copy lin from stage to toolchain
cp -r lib/* ../../armv7-cpi-linux-gnueabihf/armv7-cpi-linux-gnueabihf/sysroot/usr/lib
