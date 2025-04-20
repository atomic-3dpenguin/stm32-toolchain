cmake_minimum_required(VERSION 3.20)
project(stm32-toolchain NONE)

include(FetchContent)

set(ARM_GCC_URL_BASE "https://developer.arm.com/-/media/Files/downloads/gnu/" )
set(ARM_GCC_VERSION "14.2.rel1" )
set(ARM_GCC_DIR "gcc-arm-none-eabi-${ARM_GCC_SHORT}" CACHE STRING " A String")
set(TOOLCHAIN_DOWNLOAD_URL "${ARM_GCC_URL_BASE}${ARM_GCC_VERSION}/binrel/arm-gnu-toolchain-${ARM_GCC_VERSION}-x86_64-arm-none-eabi.tar.xz")

FetchContent_Declare(
    arm_gcc
    URL ${TOOLCHAIN_DOWNLOAD_URL}
    SOURCE_DIR ${CMAKE_BINARY_DIR}/arm_gcc
    DOWNLOAD_EXTRACT_TIMESTAMP true
)

FetchContent_MakeAvailable(arm_gcc)

message(STATUS "ARM GCC installed to: ${arm_gcc_SOURCE_DIR}")
