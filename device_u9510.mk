$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u9510/u9510-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u9510/overlay

LOCAL_PATH := device/huawei/u9510
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init:root/init \
    $(LOCAL_PATH)/recovery/ueventd.huawei.rc:recovery/root/ueventd.huawei.rc 
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/chargeservice:root/sbin/chargeservice
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/res/images/normal/level0.png:root/res/images/normal/level0.png \
    $(LOCAL_PATH)/recovery/res/images/normal/level1.png:root/res/images/normal/level1.png \
    $(LOCAL_PATH)/recovery/res/images/normal/level2.png:root/res/images/normal/level2.png \
    $(LOCAL_PATH)/recovery/res/images/normal/level3.png:root/res/images/normal/level3.png \
    $(LOCAL_PATH)/recovery/res/images/normal/level4.png:root/res/images/normal/level4.png \
    $(LOCAL_PATH)/recovery/res/images/normal/level5.png:root/res/images/normal/level5.png
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/res/images/720x1280/batt_level_scale.png:root/res/images/720x1280/batt_level_scale.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/batt_level_top.png:root/res/images/720x1280/batt_level_top.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/bg.png:root/res/images/720x1280/bg.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/empty_charge.png:root/res/images/720x1280/empty_charge.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/err_charge.png:root/res/images/720x1280/err_charge.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/full_charge.png:root/res/images/720x1280/full_charge.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/mynewfile:root/res/images/720x1280/mynewfile \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_0.png:root/res/images/720x1280/number_0.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_1.png:root/res/images/720x1280/number_1.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_2.png:root/res/images/720x1280/number_2.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_3.png:root/res/images/720x1280/number_3.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_4.png:root/res/images/720x1280/number_4.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_5.png:root/res/images/720x1280/number_5.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_6.png:root/res/images/720x1280/number_6.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_7.png:root/res/images/720x1280/number_7.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_8.png:root/res/images/720x1280/number_8.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_9.png:root/res/images/720x1280/number_9.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/percent_10.png:root/res/images/720x1280/percent_10.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/percent_5.png:root/res/images/720x1280/percent_5.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/percent_sign.png:root/res/images/720x1280/percent_sign.png

    
# Filesystem management tools
PRODUCT_PACKAGES += \
	static_busybox \
	make_ext4fs \
	e2fsck \
	setup_fs
    
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u9510
PRODUCT_DEVICE := u9510
