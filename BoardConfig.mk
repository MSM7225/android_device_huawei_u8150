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

# Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# Target Chipset/Platform
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j
TARGET_ARCH_VARIANT_CPU := arm1136ej-s
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8160/include

# Target Properties
TARGET_BOOTLOADER_BOARD_NAME := u8160
TARGET_OTA_ASSERT_DEVICE := u8160,hwu8160,u8180,hwu8180

# Target Information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_HUAWEI_BLUETOOTH := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8160

# Browser
JS_ENGINE := v8
HTTP := chrome

WITH_JIT := true
ENABLE_JSC_JIT := true

TARGET_WEBKIT_USE_MORE_MEMORY := true

TARGET_FORCE_CPU_UPLOAD := true

# USB Mass Storage
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
#TARGET_BOOTANIMATION_USE_RGB565 := true ## Inexistent on ICS

# Input 
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Graphics
USE_OPENGL_RENDERER := false
BOARD_EGL_CFG := device/huawei/u8160/prebuilt/lib/egl/egl.cfg
BOARD_NO_RGBX_8888 := true
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE 
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
#COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 ## Useless, maybe GB Related
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true ## Needed for pseudo hw-accel
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true ## Needs a patch on ICS
#BOARD_USE_SKIA_LCDTEXT := true # not sure
#COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT ## GB Related, Inexistent on ICS
#COMMON_GLOBAL_CFLAGS += -DUNABLE_TO_DEQUEUE ## GB Related, Inexistent on ICS

# SQLite Hack
COMMON_GLOBAL_CFLAGS += -DSQLITE_NO_SYNC ## Performance Test

# Media
#BOARD_USES_QCOM_OMXCORE := true ## Test on MSM7x25
#BOARD_USES_QCOM7x25_HARDWARE := true ## Test on MSM7x25
#COMMON_GLOBAL_CFLAGS += -DUSES_QCOM7x25_HARDWARE ## Test on MSM7x25
#COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX ## Test on MSM7x25
#COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK ## GB Related, Inexistent on ICS

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_BAND := 802_11_ABG
BOARD_WLAN_DEVICE := bcm4329
BOARD_WLAN_DEVICE_REV := bcm4329

WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/wifi/firmware.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wifi/firmware.bin nvram_path=/data/misc/wifi/nvram.txt iface_name=wlan"

# Minimal fonts
SMALLER_FONT_FOOTPRINT := true
#MINIMAL_FONT_FOOTPRINT := true ## Inexistent on ICS

# Recovery
TARGET_RECOVERY_FSTAB := device/huawei/u8160/recovery/recovery.fstab
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8160/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_LDPI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/msm7x25-common
TARGET_KERNEL_CONFIG := hw_msm7x25_cm9_defconfig
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8160
BOARD_KERNEL_PAGESIZE := 4096
# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144
#TARGET_PREBUILT_KERNEL := device/huawei/u8160/prebuilt/kernel ## Now compiled from sources

# Init
TARGET_PROVIDES_INIT_RC := true
TARGET_NO_INITLOGO := true

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 04900000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "userdata2"
# mtd8: 01400000 00020000 "cust"

# Partitions Size
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
