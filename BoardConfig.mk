# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2021 The LineageOS Project
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

# inherit from common
include device/samsung/msm8974-common/BoardConfig.mk

DEVICE_PATH := device/samsung/kltedv

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/vnd_klte.txt
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Build Fingerprint
BUILD_FINGERPRINT := samsung/kltedv/klte:6.0.1/MMB29M/G900IDVS1CQE1:user/release-keys

# Kernel
TARGET_KERNEL_CONFIG := lineage_klte_bcm2079x_defconfig

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_kltedv
TARGET_RECOVERY_DEVICE_MODULES := libinit_kltedv

# Manifests
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# OTA
TARGET_OTA_ASSERT_DEVICE := klte,kltedv,kltespr,kltexx

# Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800		# Dont change it
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12507380736	# Dont change it

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../$(DEVICE_PATH)/recovery/recovery_keys.c

# NFC
include $(COMMON_PATH)/nfc/bcm2079x/board.mk

# inherit from the proprietary version
include vendor/samsung/kltexx/BoardConfigVendor.mk

# inherit from the proprietary version
include vendor/samsung/msm8974-common/BoardConfigVendor.mk
