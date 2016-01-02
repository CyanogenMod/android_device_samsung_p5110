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

# Include espresso-common makefile
$(call inherit-product, device/samsung/espresso-common/espresso-common.mk)

LOCAL_PATH := device/samsung/p5110

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/aosp

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tiny_hw.xml:system/etc/sound/espresso10wifi \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# IR packages
PRODUCT_PACKAGES += \
    consumerir.piranha

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# Use the non-open-source parts, if they're present
$(call inherit-product-if-exists, vendor/samsung/p51xx/p5110-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/p51xx/p51xx-vendor.mk)
