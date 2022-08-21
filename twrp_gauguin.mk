#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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

PRODUCT_RELEASE_NAME := gauguin
DEVICE_PATH := device/xiaomi/gauguin

CUSTOM_VENDOR := $(lastword $(subst /, ,$(firstword $(subst _, ,$(firstword $(MAKEFILE_LIST))))))
BOARD_VENDOR := $(or $(word 2,$(subst /, ,$(firstword $(MAKEFILE_LIST)))),$(value 2))

$(call inherit-product, $(DEVICE_PATH)/device.mk)
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2127-12-31

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gauguin
PRODUCT_NAME := twrp_gauguin
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T Lite
PRODUCT_MANUFACTURER := Xiaomi
