#
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
#

# Release name
PRODUCT_RELEASE_NAME := p5110

# Boot animation
# TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 1280

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# Inherit common CM configuration
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# CyanogenMod specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso-common/overlay/cm-common

# Use 44.1 kHz UI sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage13.mk)

# Inherit from the common Open Source product configuratios
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p5110/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p5110
PRODUCT_NAME := cm_p5110
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P5110
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espresso10wifixx \
    TARGET_DEVICE=espresso10wifi \
    BUILD_FINGERPRINT="samsung/espresso10wifixx/espresso10wifi:4.2.2/JDQ39/P5110XXDML1:user/release-keys" \
    PRIVATE_BUILD_DESC="espresso10wifixx-user 4.2.2 JDQ39 P5110XXDML1 release-keys"
