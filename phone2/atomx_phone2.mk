#
# Copyright (C) 2024 The AtomX Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_phone2,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/phone2/device.mk)

# Inherit from the AtomX configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := phone2
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A065
PRODUCT_NAME := atomx_phone2

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Pong \
    TARGET_PRODUCT=Pong

PRODUCT_GMS_CLIENTID_BASE := android-nothing

endif
