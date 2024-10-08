#
# Copyright (C) 2024 The AtomX Project 
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_oneplus12,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/oneplus12/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := oneplus12
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := CPH2573
PRODUCT_NAME := atomx_oneplus12

PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := OP595DL1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

endif
