#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from core 64-bit telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common OrangeFox/TWRP stuff.
ifneq ($(wildcard vendor/recovery/config/common.mk),)
    $(call inherit-product, vendor/recovery/config/common.mk)
else ifneq ($(wildcard vendor/twrp/config/common.mk),)
    $(call inherit-product, vendor/twrp/config/common.mk)
else ifneq ($(wildcard vendor/omni/config/common.mk),)
    $(call inherit-product, vendor/omni/config/common.mk)
endif

# Inherit from a14xm device
$(call inherit-product, device/samsung/a14xm/device.mk)

PRODUCT_DEVICE := a14xm
PRODUCT_NAME := fox_a14xm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A146P
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a14xmxx-user 15 AP3A.240905.015.A2 A146PXXUHEZB1 release-keys"

BUILD_FINGERPRINT := samsung/a14xmxx/a14xm:15/AP3A.240905.015.A2/A146PXXUHEZB1:user/release-keys
