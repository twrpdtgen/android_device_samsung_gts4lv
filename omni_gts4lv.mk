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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gts4lv device
$(call inherit-product, device/samsung/gts4lv/device.mk)

PRODUCT_DEVICE := gts4lv
PRODUCT_NAME := omni_gts4lv
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T725
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts4lvxx-user 11 RP1A.200720.012 T725XXS3DWA1 release-keys"

BUILD_FINGERPRINT := samsung/gts4lvxx/gts4lv:11/RP1A.200720.012/T725XXS3DWA1:user/release-keys
