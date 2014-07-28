USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/vs840/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_BOOTLOADER_BOARD_NAME := vs840
TARGET_ARCH := arm
BOARD_KERNEL_CMDLINE := vmalloc=450M, console=ttyDCC0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048

# Architecture
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_INTERNAL_PARTITIONS := true

TARGET_PREBUILT_KERNEL := device/lge/vs840/kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/vs840/recovery/graphics.c

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

BOARD_DATA_DEVICE := /dev/block/mmcblk0p28
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p26
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p27
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1

# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
