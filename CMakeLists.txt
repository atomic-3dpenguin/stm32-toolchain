cmake_minimum_required(VERSION 3.20)
project(stm32-toolchain NONE)

include(FetchContent)

set(ARM_GCC_URL_BASE "https://developer.arm.com/-/media/Files/downloads/gnu-rm" )
set(ARM_GCC_VERSION "10.3-2021.10" )
set(ARM_GCC_SHORT "10.3-2021.10" )
set(ARM_GCC_DIR "gcc-arm-none-eabi-${ARM_GCC_SHORT}" CACHE STRING " A String")
# https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
#https://developer.arm.com/-/media/Files/downloads/gnu/14.2.rel1/binrel/arm-gnu-toolchain-14.2.rel1-x86_64-arm-none-eabi.tar.xz
set(TOOLCHAIN_DOWNLOAD_URL "https://developer.arm.com/-/media/Files/downloads/gnu-rm/${ARM_GCC_VERSION}/gcc-arm-none-eabi-${ARM_GCC_SHORT}-x86_64-linux.tar.bz2")

FetchContent_Declare(
    arm_gcc
    URL ${TOOLCHAIN_DOWNLOAD_URL}
    SOURCE_DIR ${CMAKE_BINARY_DIR}/arm_gcc
    DOWNLOAD_EXTRACT_TIMESTAMP true
)

FetchContent_MakeAvailable(arm_gcc)

message(STATUS "ARM GCC installed to: ${arm_gcc_SOURCE_DIR}")
