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

# Include p51xx BoardConfigCommon
-include device/samsung/p5100/BoardConfigCommon.mk

TARGET_BOARD_INFO_FILE := device/samsung/p5110/board-info.txt

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/espresso10
TARGET_KERNEL_CONFIG := custom_p5110_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := p5110,GT-P5110,p5113,GT-P5113,espresso10wifi,espresso10wifixx

# TWRP
DEVICE_RESOLUTION := 1280x800
HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
