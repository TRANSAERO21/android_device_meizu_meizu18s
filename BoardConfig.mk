# Build
BUILD_BROKEN_DUP_RULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo300

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lahaina
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# API
BOARD_SYSTEMSDK_VERSIONS := 30
SHIPPING_API_LEVEL := 30

# Platform
QCOM_BOARD_PLATFORMS += lahaina
TARGET_BOARD_PLATFORM := lahaina

# Kernel
TARGET_NO_KERNEL := false

BOARD_KERNEL_CMDLINE := \
	console=ttyMSM0,115200n8 \
	androidboot.hardware=qcom \
	androidboot.console=ttyMSM0 \
	androidboot.memcg=1 \
	lpm_levels.sleep_disabled=1 \
	video=vfb:640x400,bpp=32,memsize=3072000 \
	msm_rtb.filter=0x237 \
	service_locator.enable=1 \
	androidboot.usbcontroller=a600000.dwc3 \
	swiotlb=0 \
	loop.max_part=7 \
	cgroup.memory=nokmem,nosocket \
	pcie_ports=compat \
	loop.max_part=7 \
	iptable_raw.raw_before_defrag=1 \
	ip6table_raw.raw_before_defrag=1

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000

# Kernel compilation
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := false

# DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_KERNEL_APPEND_DTB := false

# DTBO
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_INCLUDE_RECOVERY_DTBO := true

# Boot header
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

# Dynamic partitions
BOARD_USES_METADATA_PARTITION := true
BOARD_SUPER_PARTITION_SIZE := 6442450944
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := vendor odm

# Partitions size
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_KERNEL-GKI_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 48318382080
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_DTBOIMG_PARTITION_SIZE := 0x1800000
BOARD_FLASH_BLOCK_SIZE := 131072 

# Partitions file system
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_EXT4_SHARE_DUP_BLOCKS := true
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_ODM := odm

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := device/qcom/lahaina/recovery/recovery.fstab
TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_msm

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := boot vendor_boot vendor odm dtbo vbmeta

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# Kernel Modules
# BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEFINED_VENDOR_KERNEL_MODULES_PATH)/*.ko)

# GKI
# BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(wildcard $(DEFINED_VENDOR_RAMDISK_KERNEL_MODULES_PATH)/*.ko)

# Treble
BOARD_DO_NOT_STRIP_VENDOR_MODULES := true

# Radio
ADD_RADIO_FILES := true

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# WLAN
include device/qcom/wlan/lahaina/BoardConfigWlan.mk

# SEPolicy
include device/qcom/sepolicy_vndr/SEPolicy.mk

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Sensors
USE_SENSOR_MULTI_HAL := true

# GPS
TARGET_NO_RPC := true

# QSPM
TARGET_USES_QSPM := true

# PD
TARGET_PD_SERVICE_ENABLED := true

# Peripheral Manager
TARGET_PER_MGR_ENABLED := true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Display
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
USE_OPENGL_RENDERER := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Audio
BOARD_USES_GENERIC_AUDIO := true
USE_LIB_PROCESS_GROUP := true
TARGET_USES_AOSP := false
TARGET_USES_AOSP_FOR_AUDIO := false

# VM
TARGET_ENABLE_VM_SUPPORT := true

# AV
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := false

# FM
BOARD_HAVE_QCOM_FM := false

# HIDL
DEVICE_MATRIX_FILE := device/qcom/common/compatibility_matrix.xml
DEVICE_MANIFEST_FILE := device/meizu/m2182/manifest.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := device/meizu/m2182/framework_manifest.xml

# DIAG
TARGET_HAS_DIAG_ROUTER := true

# QESDK
PRODUCT_ENABLE_QESDK := true

# Symlinks
TARGET_MOUNT_POINTS_SYMLINKS := false

# VNDK
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
RECOVERY_SNAPSHOT_VERSION := current
RAMDISK_SNAPSHOT_VERSION := current
