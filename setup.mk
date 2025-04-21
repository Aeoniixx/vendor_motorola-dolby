# Inherit dolby configuration
$(call inherit-product, vendor/motorola-dolby/dolby/dolby-vendor.mk)

CONFIG_PATH := vendor/motorola-dolby/dolby

# Audio props
TARGET_EXCLUDES_AUDIOFX := true

# HIDL
DEVICE_MANIFEST_FILE := $(CONFIG_PATH)/hidl/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(CONFIG_PATH)/hidl/framework_compatibility_matrix.xml

# Props
PRODUCT_PRODUCT_PROPERTIES += \
	persist.vendor.audio_fx.current=dolby \
	ro.vendor.audio.dolby.dax.support=true \
	ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1

# Props Override
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.audio.dolby.ds2.enabled=true \
	vendor.audio.dolby.ds2.hardbypass=true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(CONFIG_PATH)/sepolicy/vendor
