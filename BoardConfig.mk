# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := $(call my-dir)

# Import the msm7x25-common BoardConfigCommon.mk
include device/huawei/msm7x25-common/BoardConfigCommon.mk

# Target Chipset/Platform
TARGET_BOARD_VARIANT := msm7x25

# Target Properties
TARGET_BOOTLOADER_BOARD_NAME := u8150
TARGET_OTA_ASSERT_DEVICE := u8150,hwu8150,ideos,U8150

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8150

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WEXT_NO_COMBO_SCAN := true

WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4319_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4319.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4319.bin nvram_path=/system/etc/nv_4319.txt"

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/u8150
TARGET_KERNEL_CONFIG := cyanogen_u8150_defconfig
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8150
