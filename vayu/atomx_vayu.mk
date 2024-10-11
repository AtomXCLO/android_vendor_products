#
# Copyright (C) 2024 The AtomX Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_vayu,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/vayu/device.mk)

 # Inherit from the AtomX configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

# Device identifier
PRODUCT_NAME := atomx_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif
