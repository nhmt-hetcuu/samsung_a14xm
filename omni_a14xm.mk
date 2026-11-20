#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from a14xm device
$(call inherit-product, device/samsung/a14xm/device.mk)

# Inherit some common Omni/OrangeFox/TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := a14xm
PRODUCT_NAME := omni_a14xm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A146P
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a14xmxx-user 15 AP3A.240905.015.A2 A146PXXUHEZB1 release-keys"

BUILD_FINGERPRINT := samsung/a14xmxx/a14xm:15/AP3A.240905.015.A2/A146PXXUHEZB1:user/release-keys
