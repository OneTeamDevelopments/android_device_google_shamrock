#
# Copyright (C) 2017 The LineageOS Project
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
#

LOCAL_PATH := device/google/shamrock

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/google/shamrock/shamrock-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Permissions
PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
		frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
		frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
		frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
		frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
		frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
		frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml \
		frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
		frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
		frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
		frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
		frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
		frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
		frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
		frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
		frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
		frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
		frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
		frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
		frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
		frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
		frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
		frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vr.high_performance.xml \
		frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
		frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
		frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
		frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
		frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
		frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
		frameworks/native/data/etc/android.hardware.wifi.aware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.aware.xml \
		frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
		frameworks/native/data/etc/android.software.print.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.print.xml \
		frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
		frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
		android.hardware.audio@2.0-impl \
		android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
		android.hardware.broadcastradio@1.0-impl \
		android.hardware.soundtrigger@2.0-impl \
    audio.a2dp.default \
    audio.primary.msm8952 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libtinycompress \
    tinymix

# Audio Configurations (Shamrock)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
		$(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
		$(LOCAL_PATH)/configs/audio_policy.conf:system/vendor/etc/audio_policy.conf \
		$(LOCAL_PATH)/configs/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
		$(LOCAL_PATH)/configs/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
		$(LOCAL_PATH)/configs/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
		$(LOCAL_PATH)/configs/sound_trigger_mixer_paths.xml:system/vendor/etc/sound_trigger_mixer_paths.xml \
		$(LOCAL_PATH)/configs/sound_trigger_platform_info.xml:system/vendor/etc/sound_trigger_platform_info.xml \
		$(LOCAL_PATH)/configs/aanc_tuning_mixer.txt:system/vendor/etc/aanc_tuning_mixer.txt

# Audio Configurations (LineageOS)
PRODUCT_COPY_FILES += \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
		camera.device@3.2-impl \
		android.hardware.camera.provider@2.4-impl \
    vendor.qti.hardware.camera.device@1.0 \
    vendor.qti.hardware.camera.device@1.0_vendor \
    libmm-qcamera \
    Snap

# Disable camera Treble path
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_treble=true

# Disable Vulkan
PRODUCT_PROPERTY_OVERRIDES += \
    persist.graphics.vulkan.disable=true

# Display
PRODUCT_PACKAGES += \
		android.hardware.graphics.allocator@2.0-impl \
		android.hardware.graphics.allocator@2.0-service \
		android.hardware.graphics.composer@2.1-impl \
		android.hardware.graphics.composer@2.1-service \
		android.hardware.graphics.mapper@2.0-impl \
		android.hardware.memtrack@1.0-impl \
		android.hardware.memtrack@1.0-service \
    copybit.msm8952 \
    gralloc.msm8952 \
    hwcomposer.msm8952 \
    libtinyxml \
    memtrack.msm8952 \
		libdisplayconfig \
    liboverlay \
    libqdMetaData.system

PRODUCT_PACKAGES += \
		vendor.display.color@1.0-service \
		vendor.display.color@1.0-impl \
		vendor.display.config@1.1 \
		vendor.display.config@1.1_vendor

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service

# Healthd
PRODUCT_PACKAGES += \
		android.hardware.health@2.0-service.msm8952 \
		chargeonlymode

# Gatekeeper HAL
PRODUCT_PACKAGES += \
		android.hardware.gatekeeper@1.0-impl \
		android.hardware.gatekeeper@1.0-service

# Doze
PRODUCT_PACKAGES += \
   	OneTeamDoze

# IPA Manager
PRODUCT_PACKAGES += \
		ipacm \
		IPACM_cfg.xml

# Ramdisk
PRODUCT_PACKAGES += \
		fstab.qcom \
		init.qcom.rc \
		init.qcom.sh \
		init.qcom.usb.rc \
		ueventd.qcom.rc

PRODUCT_PACKAGES += \
		init.qcom.bt.sh \
		init.qcom.post_boot.sh

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# USB HAL
PRODUCT_PACKAGES += \
		android.hardware.usb@1.0-service.basic

# GPS
PRODUCT_PACKAGES += \
		android.hardware.gnss@1.1-impl-qti \
		android.hardware.gnss@1.1-service-qti \
    gps.msm8952 \
    libcurl \
    libgnss \
    libgnsspps \
    libsensorndkbridge

# Gps Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/vendor/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/vendor/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/vendor/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:system/vendor/etc/lowi.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/vendor/etc/sap.conf \
		$(LOCAL_PATH)/gps/xtwifi.conf:system/vendor/etc/xtwifi.conf

# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
		textclassifier.bundle1

# RCS
PRODUCT_PACKAGES += \
		rcs_service_aidl \
		rcs_service_aidl.xml \
		rcs_service_api \
	 	rcs_service_api.xml

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
		android.hardware.drm@1.0-service

# Jelly package
PRODUCT_PACKAGES += \
    Jelly

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
		android.hardware.vibrator@1.0-service

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
		android.hardware.bluetooth@1.0-service-qti \
		libbt-vendor

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
		android.hardware.keymaster@3.0-service

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# LiveDisplay native
RODUCT_PACKAGES += \
		vendor.lineage.livedisplay@1.0-service-sdm

# Lights
PRODUCT_PACKAGES += \
		android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8952

# Media
PRODUCT_PACKAGES += \
		libc2dcolorconvert \
		libmm-omxcore \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
		libOmxSwVencHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Netutils
PRODUCT_PACKAGES += \
		android.system.net.netd@1.0 \
		libandroid_net \
    netutils-wrapper-1.0

# Telephony
PRODUCT_PACKAGES += \
		ims-ext-common \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# OEM Blacklist
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := \
    ro.product.model

# Power HAL
PRODUCT_PACKAGES += \
		android.hardware.power@1.1-service-qti \
    power.msm8952

# Radio
PRODUCT_PACKAGES += \
    librmnetctl \
		libcnefeatureconfig \
    libxml2

# QMI
PRODUCT_PACKAGES += \
		libjson

# Radio Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
		$(LOCAL_PATH)/seccomp_policy/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Thermal
PRODUCT_PACKAGES += \
		thermal.msm8952

PRODUCT_PACKAGES += \
		android.hardware.thermal@1.0-impl \
		android.hardware.thermal@1.0-service

# Sensors
PRODUCT_PACKAGES += \
		android.hardware.sensors@1.0-impl \
    sensors.msm8952

# Sensor Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:system/vendor/etc/sensors/hals.conf \
    $(LOCAL_PATH)/sensors/sensor_def_qcomdev.conf:system/vendor/etc/sensors/sensor_def_qcomdev.conf

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk-sp

# Wlan
PRODUCT_PACKAGES += \
		android.hardware.wifi@1.0-service \
    wcnss_service \
		libqsap_sdk \
		libQWiFiSoftApCfg \
    hostapd \
		libwpa_client \
    wpa_supplicant \
		wificond \
		wifilogd \
		dhcpcd.conf \
    wpa_supplicant.conf

# Wlan Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
		android.hidl.base@1.0 \
		android.hidl.base@1.0_system \
		android.hidl.manager@1.0 \
		android.hidl.manager@1.0_system

# Debug
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		persist.service.adb.enable=1 \
		persist.service.debuggable=1 \
		persist.sys.usb.config=mtp,adb \
		ro.secure=0 \
		ro.adb.secure=0
