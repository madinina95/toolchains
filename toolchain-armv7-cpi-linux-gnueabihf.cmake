# You can add this to your project

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Its possible to define INSTALL_DIR with -DINSTALL_DIR=/your/path
if(NOT DEFINED INSTALL_DIR)
    set(INSTALL_DIR "./")
endif()

# Define stage and tools folder
set(STAGE ${INSTALL_DIR}/toolchains/stage/armv7-cpi)
set(TOOLS ${INSTALL_DIR}/toolchains/armv7-cpi-linux-gnueabihf)

set(CMAKE_STAGING_PREFIX ${STAGE})
set(CMAKE_SYSROOT toolchains/armv7-cpi-linux-gnueabihf/armv7-cpi-linux-gnueabihf/sysroot)

# Choose the compiler
set(CMAKE_C_COMPILER ${TOOLS}/bin/armv7-cpi-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${TOOLS}/bin/armv7-cpi-linux-gnueabihf-g++)

# Define path for looking libs, headers and programs
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
