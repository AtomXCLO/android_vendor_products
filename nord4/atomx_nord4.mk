#
# Copyright (C) 2024 The AtomX Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_nord4,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/nord4/device.mk)

# Inherit from the AtomX configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := nord4
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := CPH2661
PRODUCT_NAME := atomx_nord4

PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := OP5E93L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

endif
