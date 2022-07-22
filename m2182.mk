# Virual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Emulated storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml

# API
PRODUCT_SHIPPING_API_LEVEL := 30
BOARD_SHIPPING_API_LEVEL := 30
BOARD_API_LEVEL := 30

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_BUILD_SYSTEM_IMAGE := false
PRODUCT_BUILD_SYSTEM_OTHER_IMAGE := false
PRODUCT_BUILD_VENDOR_IMAGE := true
PRODUCT_BUILD_PRODUCT_IMAGE := false
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := false
PRODUCT_BUILD_ODM_IMAGE := true
PRODUCT_BUILD_CACHE_IMAGE := false
PRODUCT_BUILD_RAMDISK_IMAGE := true
PRODUCT_BUILD_USERDATA_IMAGE := true

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.default

# WLAN
include device/qcom/wlan/lahaina/wlan.mk

# Properties
-include device/meizu/m2182/properties.mk

# Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Boot
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# QRTR
PRODUCT_PACKAGES += \
    qrtr-ns \
    qrtr-lookup \
    libqrtr

# F2FS
PRODUCT_PACKAGES += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs

# Camera
PRODUCT_PACKAGES += \
    camera.device@3.2-impl \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service_64

# Audio
-include $(TOPDIR)vendor/qcom/opensource/audio-hal/primary-hal/configs/lahaina/lahaina.mk

PRODUCT_PACKAGES += \
    libvolumelistener

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_configuration_generic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/surround_sound_configuration_5_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_configuration_5_0.xml

# libprocessgroup
PRODUCT_COPY_FILES += \
    device/meizu/m2182/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# VM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ueventd-odm.rc:$(TARGET_COPY_OUT_ODM)/ueventd.rc

PRODUCT_PACKAGES += \
    vmmgr \
    vmmgr.rc \
    vmmgr.conf

# Lights
PRODUCT_PACKAGES += \
    android.hardware.lights-service.qti \
    lights.qcom

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# A/B
PRODUCT_PACKAGES +=
    checkpoint_gc \ 
    update_engine \
    update_engine_client \
    update_engine_sideload \
    update_verifier

PRODUCT_HOST_PACKAGES += \
    brillo_update_payload \
    configstore_xmlparser

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

# TCM
PRODUCT_BOOT_JARS += \
    tcmiface

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/charger_fw_fstab.qti:$(TARGET_COPY_OUT_VENDOR)/etc/charger_fw_fstab.qti

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml

# GNSS
PRODUCT_COPY_FILES += \
    device/meizu/m2182/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Servicetracker
PRODUCT_PACKAGES += \
    vendor.qti.hardware.servicetracker@1.2-impl \
    vendor.qti.hardware.servicetracker@1.2-service

# Framework detect
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect \
    libvndfwk_detect_jni.qti.vendor \
    libqti_vndfwk_detect.vendor

# Whitelisted apps
PRODUCT_COPY_FILES += \
    device/meizu/m2182/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# Privileged permission
PRODUCT_COPY_FILES += \
    device/meizu/m2182/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml
