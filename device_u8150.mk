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

# Inherit products
$(call inherit-product, vendor/huawei/u8150/vendor.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS := device/huawei/u8150/overlay

# LDPI assets
PRODUCT_AAPT_CONFIG := mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.config_datause_iface=rmnet0 \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=8 \
    ro.ril.hsupa.category=6 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.ril.v3=icccardstatus,datacall,signalstrength,facilitylock

# Graphics 
PRODUCT_PACKAGES += \
    copybit.u8150 \
    gralloc.u8150
    
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=0 \
    persist.sys.purgeable_assets=1 \
    persist.sys.strictmode.visual=false \
    ro.config.disable_hw_accel=true \
    ro.opengles.version=65536 \
    windowsmgr.max_events_per_sec=170
    
# Screen
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.u8150 \
    audio.primary.u8150
    
# Audio Config
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8150/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt
    
# Radio FM (test)
#PRODUCT_PACKAGES += \
#    Effem \
#    libfmradio.bcm4329 \
#    hcitool \
#    hciconfig

# Video decoding
#PRODUCT_PACKAGES += \
#    libstagefrighthw \
#    libopencorehw \
#    libmm-omxcore \
#    libOmxCore

# Camera
PRODUCT_PACKAGES += \
    camera.u8150

# Camcorder Hack
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/app/Camcorder.apk:system/app/Camcorder.apk \
    device/huawei/u8150/prebuilt/lib/libandroid-illusion.so:system/lib/libandroid-illusion.so
    
# Media
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml
    
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    ro.media.dec.jpeg.memcap=20000000 \
    debug.camcorder.disablemeta=1
    
# Packages
PRODUCT_PACKAGES += \
    Gallery2D \
    OptiTrebuchet
    
# Replace Gallery2D with QuickPic
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/app/QuickPic.apk:system/app/Gallery2D.apk \
    device/huawei/u8150/prebuilt/lib/libqpicjni136.so:system/lib/libqpicjni136.so
    
# Replace Trebuchet with Nova Launcher
#PRODUCT_COPY_FILES += \
#    device/huawei/u8150/prebuilt/app/NovaLauncher.apk:system/app/Trebuchet.apk \
#    device/huawei/u8150/prebuilt/lib/libgif.so:system/lib/libgif.so

# GPS
PRODUCT_PACKAGES += \
    gps.u8150
    
# Bluetooth
#PRODUCT_PACKAGES += \
#    huawei_brcm_patchram_plus
    
# Bluetooth Config
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    device/huawei/u8150/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
    
# Lights
PRODUCT_PACKAGES += \
    lights.u8150
    
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
    
PRODUCT_PROPERTY_OVERRIDES += \
    view.fading_edge_length=8 \
    view.minimum_fling_velocity=25 \
    view.scroll_friction=0.008 \
    view.touch_slop=15 \
    ro.max.fling_velocity=4000

# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl
    
# Hardware Management
PRODUCT_PACKAGES += \
    U8150Parts
    
# U8150Parts
PRODUCT_COPY_FILES += \
    device/huawei/u8150/ramdisk/init.u8150.parts.rc:root/init.u8150.parts.rc \
    device/huawei/u8150/prebuilt/bin/handle_u8150parts:system/bin/handle_u8150parts
    
# Huawei Hardware setup
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/init.d/02setuphuawei:system/etc/init.d/02setuphuawei
    
# zRAM
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Dalvik VM
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-flags=v=a,o=v,m=y,u=y

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    ro.kernel.android.checkjni=0
    
# System ADB Config
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb,mass_storage \
    persist.adb.notify=0 \
    persist.service.adb.enable=1 \
    persist.sys.root_access=1
    
# Usb Accessory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
   
# Vold
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/vold.fstab:system/etc/vold.fstab
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20    
    
# Default ADB Ramdisk Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.debuggable=1 \
    ro.secure=0 \
    ro.allow.mock.location=0

# Keep Launcher in Memory
PRODUCT_PROPERTY_OVERRIDES += \
    ro.HOME_APP_ADJ=1
    
# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    mobiledata.interfaces=rmnet0,rmnet1,rmnet2
    
# Wifi interface
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=15
    
# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/u8150/prebuilt/etc/fw_4319.bin:system/etc/fw_4319.bin \
    device/huawei/u8150/prebuilt/etc/fw_4319_apsta.bin:system/etc/fw_4319_apsta.bin \
    device/huawei/u8150/prebuilt/etc/nv_4319.txt:system/etc/nv_4319.txt \
    device/huawei/u8150/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8150/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8150/ramdisk/init.rc:root/init.rc \
    device/huawei/u8150/ramdisk/init.u8150.rc:root/init.u8150.rc \
    device/huawei/u8150/ramdisk/init.u8150.usb.rc:root/init.u8150.usb.rc \
    device/huawei/u8150/ramdisk/ueventd.u8150.rc:root/ueventd.u8150.rc

# Tethering
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/bin/huawei_tether:system/bin/huawei_tether
    
# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=0 \
    ro.com.google.networklocation=0
    
# Enable repeatable keys in CWM Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115
