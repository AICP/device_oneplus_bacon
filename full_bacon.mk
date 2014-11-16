# Copyright (C) 2014 The Android Open Kang Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/bacon/bacon.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_bacon
PRODUCT_DEVICE := bacon
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := One

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_COPY_FILES += \
    device/oneplus/bacon/prebuilt/common/app/CameraNext.apk:system/app/CameraNext/CameraNext.apk \
    device/oneplus/bacon/prebuilt/common/app/GalleryNext.apk:system/app/GalleryNext/GalleryNext.apk \
    device/oneplus/bacon/prebuilt/common/app/Hexo.apk:system/app/Hexo/Hexo.apk \
    device/oneplus/bacon/prebuilt/common/app/HexoIcons.apk:system/app/HexoIcons/HexoIcons.apk \
    device/oneplus/bacon/prebuilt/common/app/ThemeStore.apk:system/app/ThemeStore/ThemeStore.apk
