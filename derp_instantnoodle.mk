#
# Copyright (C) 2018-2022 The LineageOS Project
# Copyright (C) 2019-2022 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common derp stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
$(call inherit-product, $(LOCAL_PATH)/cup/vars.mk)

SAUCE := DERP


PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2015

PRODUCT_SYSTEM_NAME := OnePlus8
PRODUCT_SYSTEM_DEVICE := OnePlus8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8-user 12 RKQ1.211119.001 Q.202207300316 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8/OnePlus8:12/RKQ1.211119.001/Q.202207300316:user/release-keys
