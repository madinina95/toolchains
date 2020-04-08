set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_STAGING_PREFIX /home/lionheart/Developpements/toolchains/stage/armv7-cpi)
set(CMAKE_SYSROOT /home/lionheart/Developpements/toolchains/armv7-cpi-linux-gnueabihf/armv7-cpi-linux-gnueabihf/sysroot)

set(tools /home/lionheart/Developpements/toolchains/armv7-cpi-linux-gnueabihf)


set(CMAKE_C_COMPILER ${tools}/bin/armv7-cpi-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/armv7-cpi-linux-gnueabihf-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
