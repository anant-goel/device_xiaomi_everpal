#
# Copyright (C) 2023 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common riceDroid Stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from everpal device
$(call inherit-product, device/xiaomi/everpal/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_everpal
PRODUCT_DEVICE := everpal
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := everpal

# riceDroid Stuff with GApps
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_USE_PIXEL_FINGERPRINT := true
SUSHI_BOOTANIMATION  := 1080
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_USES_AOSP_RECOVERY := true

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="everpal-user 12 SP1A.210812.016 V13.0.7.0.SGBINXM release-keys"

BUILD_FINGERPRINT := Redmi/everpal_in/everpal:12/SP1A.210812.016/V13.0.7.0.SGBINXM:user/release-keys


# Maintainer Stuff
RICE_MAINTAINER := SharmaG