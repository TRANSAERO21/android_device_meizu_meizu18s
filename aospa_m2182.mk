# Device supports 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Use full-featured configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# m2182 configuration
$(call inherit-product, device/meizu/m2182/m2182.mk)

# AOSPA configuration
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_m2182
PRODUCT_DEVICE := m2182
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := Meizu 18s
PRODUCT_MANUFACTURER := Meizu
