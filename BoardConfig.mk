-include device/samsung/u8500-common/BoardCommonConfig.mk

TARGET_OTA_ASSERT_DEVICE := janice,i9070,GT-I9070

#For system/core
STE_HARDWARE:= true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/u8500
TARGET_KERNEL_CONFIG := cyanogenmod_i9070_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
ARM_EABI_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/janice/bluetooth

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/janice/vibrator/vibrator.c

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/janice/rootdir/fstab.samsungjanice

# Hardware tunables (device parts replacement)
BOARD_HARDWARE_CLASS := device/samsung/janice/cmhw

# External apps on SD
TARGET_EXTERNAL_APPS = sdcard1

# Disable legacy sensors using because janice has gyro
BOARD_USE_LEGACY_SENSORS_FUSION := false
