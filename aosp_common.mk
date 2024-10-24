#
# Copyright 2020 The Android Open-Source Project
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

#
# All components inherited here go to system image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
ifneq ($(BOARD_WITHOUT_RADIO),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
endif

#
# All components inherited here go to product image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_product.mk)
ifneq ($(BOARD_WITHOUT_RADIO),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_product.mk)
endif

#
# All components inherited here go to vendor image
#
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
ifneq ($(BOARD_WITHOUT_RADIO),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)
endif

#$(call inherit-product, device/google/gs201/device.mk)
#$(call inherit-product-if-exists, vendor/google_devices/gs201/proprietary/device-vendor.mk)

# TODO: fix
# PRODUCT_RESTRICT_VENDOR_FILES := all
