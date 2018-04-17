PRODUCT_BRAND ?= aaosp

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aaosp/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/aaosp/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/aaosp/build/tools/50-clean.sh:system/addon.d/50-clean.sh

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/aaosp/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/aaosp/prebuilt/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/aaosp/prebuilt/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/aaosp/prebuilt/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aaosp/overlay/common

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/aaosp/prebuilt/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aaosp/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# Google sounds
include vendor/aaosp/google/GoogleAudio.mk

# Packages
include vendor/aaosp/config/packages.mk

# Clean version
include vendor/aaosp/config/version.mk
