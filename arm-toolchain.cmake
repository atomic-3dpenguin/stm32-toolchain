set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR cortex-m4)

set(ARM_TOOLCHAIN_PATH "${CMAKE_CURRENT_LIST_DIR}/build/arm_gcc/bin")

set(CMAKE_C_COMPILER ${ARM_TOOLCHAIN_PATH}/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${ARM_TOOLCHAIN_PATH}/arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER ${ARM_TOOLCHAIN_PATH}/arm-none-eabi-gcc)
set(CMAKE_OBJCOPY     ${ARM_TOOLCHAIN_PATH}/arm-none-eabi-objcopy)
set(CMAKE_SIZE        ${ARM_TOOLCHAIN_PATH}/arm-none-eabi-size)

set(CMAKE_FIND_ROOT_PATH ${ARM_TOOLCHAIN_PATH})
