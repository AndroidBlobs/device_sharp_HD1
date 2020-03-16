# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from HD1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sharp
PRODUCT_DEVICE := HD1
PRODUCT_MANUFACTURER := sharp
PRODUCT_NAME := lineage_HD1
PRODUCT_MODEL := FS8024

PRODUCT_GMS_CLIENTID_BASE := android-sharp
TARGET_VENDOR := sharp
TARGET_VENDOR_PRODUCT_NAME := HD1
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="FS8024_00CN-user 8.0.0 OPR1.170623.027 00CN_0_060 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := FIH/HD1_00CN_MCDA/HD1:8.0.0/OPR1.170623.027/00CN_0_060:user/release-keys
