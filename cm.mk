#
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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p5110

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p5110/full_p5110.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p5110
PRODUCT_NAME := cm_p5110
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P5110
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P5110 TARGET_DEVICE=GT-P5110 BUILD_FINGERPRINT=samsung/espresso10rfxx/espresso10rf:4.0.3/IML74K/P5110XWALE2:user/release-keys PRIVATE_BUILD_DESC="espresso10rfxx-user 4.0.3 IML74K P5110XWALE2 release-keys"
