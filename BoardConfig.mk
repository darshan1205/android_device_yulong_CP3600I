DEVICE_TREE := device/yulong/CP3600I

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8952

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
# TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
#TARGET_KERNEL_SOURCE := kernel/yulong/msm8952
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CONFIG :=
#TARGET_KERNEL_DEVICE_DEFCONFIG :=

TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/kernel

# Boot image
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 5368709120
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24266565222
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 149
#TW_SCREEN_BLANK_ON_BOOT := true
#TW_INCLUDE_NTFS_3G := true

# exFAT drivers included in the kernel
TW_NO_EXFAT_FUSE := true

# No love for the wicked (device ships with M)
TW_EXCLUDE_SUPERSU := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Encryption support
TW_INCLUDE_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true
