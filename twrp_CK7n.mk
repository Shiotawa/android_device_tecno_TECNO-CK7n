#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-CK7n device
$(call inherit-product, device/tecno/CK7n/device.mk)

PRODUCT_DEVICE := CK7n
PRODUCT_NAME := twrp_CK7n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO Camon 20 Pro
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_ck7n_h894-user 12 SP1A.210812.016 217022 release-keys"

BUILD_FINGERPRINT := TECNO/CK7n-GL/TECNO-CK7n:12/SP1A.210812.016/230111V246:user/release-keys
