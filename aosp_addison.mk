# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/gapps/arm-phone-gapps.mk)

$(call inherit-product, device/motorola/addison/device.mk)

$(call inherit-product-if-exists, vendor/motorola/addison/addison-vendor.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions

PRODUCT_DEVICE := addison
PRODUCT_NAME := addison
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
BOARD_VENDOR := Motorola
PRODUCT_MODEL := Moto Z Play
TARGET_VENDOR := Motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model
export WITH_GAPPS=true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/addison/addison:7.0/NPN25.137-24-1/1:user/release-keys \
    PRIVATE_BUILD_DESC="addison-user 7.0 NPN25.137-24-1 1 release-keys" \
    PRODUCT_NAME="Moto Z Play"