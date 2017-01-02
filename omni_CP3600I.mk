# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CP3600I
PRODUCT_MODEL := Coolpad 3600I
PRODUCT_NAME := omni_CP3600I
PRODUCT_BRAND := Coolpad
PRODUCT_MANUFACTURER := YuLong

#TARGET_DEVICE := CP3600I

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=CP3600I \
    ro.product.device=CP3600I
