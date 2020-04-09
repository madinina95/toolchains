# TOOLCHAINS

This project contains a toolchain to cross compile on linux a SFML based game on clockworkOS available in GameShell.
* [clockworkpi](https://www.clockworkpi.com/)
* [SFML](https://www.sfml-dev.org/)

with this you can build your SFML game to deploy it on gameshell.
This toolchains has been build with [crosstool-ng](http://crosstool-ng.github.io/)

## The toolchain
The toolchain contains :
 * [SFML library](https://github.com/SFML/SFML)
 * [spdlog](https://github.com/gabime/spdlog)
 * [tmxparser](https://github.com/sainteos/tmxparser)
 
## Install the toolchain
To install the toolchain :
* Clone the repo.
* Execute install.sh script :
`sh install.sh`

## Build your app
To build your app copy the toolchain-armv7-cpi-linux-gnueabihf.cmake file in your project and build it like this :
```
cd your-project
mkdir build
cd build
cmake .. -DDCMAKE_TOOLCHAIN_FILE=toolchain-armv7-cpi-linux-gnueabihf.cmake
cmake --build . -- -j 4
```

## Deploy your app
### Check your app dependecies 

`armv7-cpi-linux-gnueabihf-readelf -d your.exe`

you will have something like this :

```
0x0000000000000001 (NEEDED)             Shared library: [libsfml-audio.so.2.5]
0x0000000000000001 (NEEDED)             Shared library: [libsfml-graphics.so.2.5]
0x0000000000000001 (NEEDED)             Shared library: [libsfml-window.so.2.5]
0x0000000000000001 (NEEDED)             Shared library: [libsfml-system.so.2.5]
0x0000000000000001 (NEEDED)             Shared library: [libtinyxml2.so.6]
0x0000000000000001 (NEEDED)             Shared library: [libboost_serialization.so.1.65.1]
0x0000000000000001 (NEEDED)             Shared library: [libstdc++.so.6]
0x0000000000000001 (NEEDED)             Shared library: [libm.so.6]
0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
```

create a folder lib in your project and copy those dependencies from your toolchain to your lib folder.

### Change the rapth
In order to your app search dependencies libs in your folder lib you must modidy it's rpath.
You can do this with cmake with this option :

`set(CMAKE_INSTALL_RPATH "lib")`

The rpath will change when you will package your app.

Now you can deploy your app on your gameshell.