# Inherit common mobile tequila stuff
$(call inherit-product, vendor/tequila/config/common.mk)


# Aperture
PRODUCT_PACKAGES += \
    Aperture

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# tequilaPapers
PRODUCT_PACKAGES += \
    tequilaPapers
