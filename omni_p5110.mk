#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit common Omni configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# OmniRom specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/p5110/overlay/custom
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso-common/overlay/custom-common

# Inherit device specific configuration
$(call inherit-product, device/samsung/p5110/aosp_p5110.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_p5110

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="espresso10wifixx-user 4.2.2 JDQ39 P5110XXDML1 release-keys" \
    BUILD_FINGERPRINT="samsung/espresso10wifixx/espresso10wifi:4.2.2/JDQ39/P5110XXDML1:user/release-keys"
