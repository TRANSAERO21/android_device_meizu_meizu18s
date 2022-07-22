# Beluga
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.beluga.p=0x3 \
    ro.vendor.beluga.c=0x4800 \
    ro.vendor.beluga.s=0x900 \
    ro.vendor.beluga.t=0x240

# QTEE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qteeconnector.retrying_interval=30 \
    persist.vendor.qteeconnector.retrying_timeout=2000

# FS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.incremental.enable=yes

# QTI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=QTI

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.enableadvancedscan=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qfp=true

# QSPM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qspm.enable=true

# Permissions
PRODUCT_PROPERTY_OVERRIDES += \
	ro.control_privapp_permissions=enforce

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/config/frp

# QCOM system daemon
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcomsysd.enabled=1

# GNSS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.backup.ntpServer=0.pool.ntp.org

# Shutdown
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500