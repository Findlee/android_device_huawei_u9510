## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := u9510

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u9510/device_u9510.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u9510
PRODUCT_NAME := cm_u9510
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u9510
PRODUCT_MANUFACTURER := huawei
