# Release name
PRODUCT_RELEASE_NAME := a70q
DEVICE_PATH := device/samsung/a70q

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a70q
PRODUCT_NAME := omni_a70q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-A705
PRODUCT_MANUFACTURER := Samsung

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
