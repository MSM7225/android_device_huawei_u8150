# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

# Inherit products
$(call inherit-product, vendor/huawei/u8150/vendor.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS := device/huawei/u8150/overlay
    
# Audio Config
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt
    
# Radio FM (test)
#PRODUCT_PACKAGES += \
#    Effem \
#    libfmradio.bcm4329 \
#    hcitool \
#    hciconfig
    
# Bluetooth Config
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
  
# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko    
    
# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8150/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen.Ver23.idc:system/usr/idc/melfas-touchscreen.Ver23.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen_ver23.idc:system/usr/idc/melfas-touchscreen_ver23.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen_Ver23.idc:system/usr/idc/melfas-touchscreen_Ver23.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    device/huawei/u8150/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/u8150/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/u8150/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    device/huawei/u8150/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/huawei/u8150/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/huawei/u8150/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    device/huawei/u8150/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8150/ramdisk/init.u8150.rc:root/init.u8150.rc \
    device/huawei/u8150/ramdisk/init.u8150.usb.rc:root/init.u8150.usb.rc \
    device/huawei/u8150/ramdisk/ueventd.u8150.rc:root/ueventd.u8150.rc
