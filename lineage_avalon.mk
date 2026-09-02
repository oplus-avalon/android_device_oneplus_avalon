#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avalon device
$(call inherit-product, device/oneplus/avalon/device.mk)

# Inherit some common AxionAOSP stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_avalon
PRODUCT_DEVICE := avalon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2661

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1782873585026 release-keys" \
    BuildFingerprint=OnePlus/CPH2661IN/OP5E93L1:16/UKQ1.231108.001/U.R4T2.3a24ca8-1593c70-163c453:user/release-keys \
    DeviceName=OP5E93L1 \
    DeviceProduct=CPH2661 \
    SystemDevice=OP5E93L1 \
    SystemName=CPH2661

# AxionAOSP Flags
TARGET_BOOT_ANIMATION_RES := 1080
AXION_MAINTAINER := Klaus_Mikaelson
AXION_PROCESSOR := Snapdragon®_7+_Gen_3
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
TARGET_INCLUDE_AXFX := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDES_LOS_PREBUILTS := true
TORCH_STR_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_INCLUDE_GOOGLE_TELECOMM := false
TARGET_INCLUDE_PARTNER_SETUP := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := walt
BYPASS_CHARGE_SUPPORTED := true
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/oplus_chg/battery/mmi_charging_enable
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode
