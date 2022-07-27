# Device supports 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Use full-featured configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# meizu18s configuration
$(call inherit-product, device/meizu/meizu18s/meizu18s.mk)

# AOSPA configuration
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_meizu18s
PRODUCT_DEVICE := meizu18s
PRODUCT_BRAND := meizu
PRODUCT_MODEL := MEIZU 18s
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="meizu18s" \
    PRODUCT_NAME="meizu_18s_CN" \
    PRIVATE_BUILD_DESC="meizu_18s_CN-user 11 RKQ1.210408.001 1652422024 release-keys"

BUILD_FINGERPRINT := meizu/meizu_18s_CN/meizu18s:11/RKQ1.210408.001/1652422024:user/release-keys
