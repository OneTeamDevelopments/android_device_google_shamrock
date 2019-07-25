#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from shamrock device
$(call inherit-product, device/google/shamrock/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_BOARD_PLATFORM_VARIANT := msm8952

# Device identifier
PRODUCT_DEVICE := shamrock
PRODUCT_NAME := aosp_shamrock
PRODUCT_BRAND := Google
PRODUCT_MODEL := GM 5 Plus
PRODUCT_MANUFACTURER := Google
TARGET_VENDOR := Google
BOARD_VENDOR := Google

PRODUCT_GMS_CLIENTID_BASE := android-google

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="shamrock-user 8.1.0 OPM1.171019.019 V10.0.4.0.OEGMIFH release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/blueline/blueline:9/PQ3A.190705.003/5600800:user/release-keys"

CPU_MODEL := Snapdragon_617
