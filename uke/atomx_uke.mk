#
# Copyright (C) 2025 The AtomX Project 
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_uke,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from uke device
$(call inherit-product, device/xiaomi/uke/device.mk)

# Inherit from the AtomX configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := uke
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2410CRP4CI
PRODUCT_NAME := uke

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="uke_global-user 14 UKQ1.240624.001 OS2.0.9.0.VOZINXM release-keys" \
    BuildFingerprint=Xiaomi/uke_global/uke:14/UKQ1.240624.001/OS2.0.9.0.VOZINXM:user/release-keys \
    DeviceProduct=uke \
    SystemName=uke_global

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

endif
