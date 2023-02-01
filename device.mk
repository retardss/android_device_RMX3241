#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    install-recovery.sh \
    swap_enable.sh \

PRODUCT_PACKAGES += \
    fstab.mt6833 \
    init.connectivity.rc \
    meta_init.modem.rc \
    init.mt6833.rc \
    meta_init.rc \
    factory_init.connectivity.rc \
    init.mt6833.usb.rc \
    init.aee.rc \
    factory_init.project.rc \
    init.ago.rc \
    init.modem.rc \
    meta_init.project.rc \
    factory_init.rc \
    multi_init.rc \
    init.sensor_2_0.rc \
    init.project.rc \
    meta_init.connectivity.rc \
    init_AKM4.0.rc \
    init.recovery.mt6833.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6833:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6833

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/alps/oplus_mssi_64_cn/oplus_mssi_64_cn-vendor.mk)
