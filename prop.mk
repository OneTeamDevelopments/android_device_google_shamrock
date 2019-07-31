#
# system.prop for shamrock
#
	
# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.vendor.qti.am.reschedule_service=true \
    ro.sys.fw.dex2oat_thread_count=8 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=8

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	audio.chk.cal.us=0 \
	audio.deep_buffer.media=true \
	audio.offload.disable=false \
	audio.offload.min.duration.secs=30 \
	audio.offload.video=true \
	persist.audio.parameter.ce=0 \
	persist.vendor.audio.fluence.speaker=true \
	persist.vendor.audio.fluence.voicecall=true \
	persist.vendor.audio.fluence.voicerec=true \
	persist.vendor.audio.speaker.prot.enable=true \
	persist.vendor.bt.enable.splita2dp=false \
	ro.config.media_vol_default=10 \
	ro.config.safe_vol_default=8 \
	ro.vendor.audio.sdk.fluencetype=fluence \
	ro.vendor.audio.sdk.ssr=false \
	vendor.audio.dolby.ds2.enabled=false \
	vendor.audio.dolby.ds2.hardbypass=false \
	vendor.audio.flac.sw.decoder.24bit=true \
	vendor.audio.hw.aac.encoder=true \
	vendor.audio.offload.buffer.size.kb=64 \
	vendor.audio.offload.gapless.enabled=true \
	vendor.audio.offload.multiaac.enable=true \
	vendor.audio.offload.multiple.enabled=false \
	vendor.audio.offload.passthrough=false \
	vendor.audio.offload.track.enable=false \
	vendor.audio.parser.ip.buffer.size=262144 \
	vendor.audio.playback.mch.downsample=true \
	vendor.audio.pp.asphere.enabled=false \
	vendor.audio.safx.pbe.enabled=true \
	vendor.audio.tunnel.encode=false \
	vendor.audio.use.sw.alac.decoder=true \
	vendor.audio.use.sw.ape.decoder=true \
	vendor.audio_hal.period_size=192 \
	vendor.voice.conc.fallbackpath=deep-buffer \
	vendor.voice.path.for.pcm.voip=true \
	vendor.voice.playback.conc.disabled=true \
	vendor.voice.record.conc.disabled=false \
	vendor.voice.voip.conc.disabled=true \
	persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24 \
	ro.config.media_vol_steps=25 

# ACDB Paths
PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.calfile0=/vendor/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
	persist.audio.calfile1=/vendor/etc/acdbdata/QRD/QRD_General_cal.acdb \
	persist.audio.calfile2=/vendor/etc/acdbdata/QRD/QRD_Global_cal.acdb \
	persist.audio.calfile3=/vendor/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
	persist.audio.calfile4=/vendor/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
	persist.audio.calfile5=/vendor/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
	persist.audio.calfile6=/vendor/etc/acdbdata/QRD/QRD_Speaker_cal.acdb

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
	bluetooth.hfp.client=1 \
	qcom.bluetooth.soc=smd \
	ro.bluetooth.hfp.ver=1.7 \
	ro.qualcomm.bt.hci_transport=smd

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
	sys.vendor.shutdown.waittime=500

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
	camera.lowpower.record.enable=1 \
	media.camera.ts.monotonic=1 \
	persist.camera.gyro.disable=0 \
	persist.camera.isp.clock.optmz=0 \
	persist.camera.stats.test=5 \
	persist.vendor.camera.display.lmax=1280x720 \
	persist.vendor.camera.display.umax=1920x1080 \
	persist.vendor.qti.telephony.vt_cam_interface=1 \
	vendor.camera.aux.packagelist2=com.android.systemui,com.huaqin.cameraautotest,com.huaqin.runtime \
	vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.huaqin.factory,com.mi.AutoTest \
	vidc.enc.dcvs.extra-buff-count=2 \
	video.disable.ubwc=1

# Cne
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.cne.feature=1

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.coresight.config=stm-events

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	debug.egl.hw=0 \
	debug.sf.hw=0 \
	persist.hwc.mdpcomp.enable=true \
	debug.mdpcomp.logs=0 \
	dev.pm.dyn_samplingrate=1 \
	persist.demo.hdmirotationlock=false \
	debug.enable.sglscale=1 \
	ro.opengles.version=196610 \
	ro.sf.lcd_density=420 \
	debug.hwui.use_buffer_age=false \
	persist.debug.wfd.enable=1 \
	persist.demo.hdmirotationlock=false \
	persist.hwc.enable_vds=1 \
	persist.hwc.mdpcomp.enable=true \
	ro.qualcomm.cabl=0 \
	ro.vendor.display.cabl=2 \
	sdm.debug.disable_skip_validate=1 \
	vendor.display.disable_skip_validate=1 \
	vendor.display.enable_default_color_mode=1 \
	vendor.gralloc.enable_fb_ubwc=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
	ro.fm.transmitter=false

# Frp
PRODUCT_PROPERTY_OVERRIDES += \
	ro.frp.pst=/dev/block/bootdevice/by-name/config

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
	persist.gps.qc_nlp_in_use=1 \
	persist.loc.nlp_name=com.qualcomm.location \
	ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
	av.debug.disable.pers.cache=1 \
	media.aac_51_output_enabled=true \
	mm.enable.smoothstreaming=false \
	mm.enable.sec.smoothstreaming=false \
	media.stagefright.log-uri=1 \
	media.stagefright.use-awesome=false \
	media.stagefright.enable-player=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-fma2dp=true \
	media.stagefright.enable-scan=true \
	media.aac_51_output_enabled=true \
	mmp.enable.3g2=true \
	ro.media.enc.aud.fileformat=qcp \
	ro.media.enc.aud.codec=qcelp \
	ro.media.enc.aud.bps=13300 \
	ro.media.enc.aud.ch=1 \
	ro.media.enc.aud.hz=8000 \
	av.offload.enable=false \
	vendor.use.voice.path.for.pcm.voip=false \
	media.msm8956.version=0 \
	media.msm8956hw=0 \
	mm.enable.qcom_parser=135715 \
	vidc.enc.dcvs.extra-buff-count=2 \
	vidc.enc.narrow.searchrange=1 \
	media.camera.ts.monotonic=1 \
	mm.enable.sec.smoothstreaming=false

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.qti.sys.fw.bservice_enable=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.extension_library=libqti-perfd-client.so

# QTI Performance
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.enable_prefetch=1 \
	vendor.iop.enable_uxe=1 \
	vendor.iop.enable_prefetch_ofr=1 \
	vendor.perf.iop_v3.enable=1 \
	ro.vendor.at_library=libqti-at.so \
	persist.vendor.qti.games.gt.prof=1

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
	persist.data.netmgrd.qos.enable=true \
	persist.vendor.data.mode=concurrent \
	ro.vendor.use_data_netmgrd=true

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
	persist.rild.nitz_plmn="" \
	persist.rild.nitz_long_ons_0="" \
	persist.rild.nitz_long_ons_1="" \
	persist.rild.nitz_long_ons_2="" \
	persist.rild.nitz_long_ons_3="" \
	persist.rild.nitz_short_ons_0="" \
	persist.rild.nitz_short_ons_1="" \
	persist.rild.nitz_short_ons_2="" \
	persist.rild.nitz_short_ons_3=""

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	DEVICE_PROVISIONED=1 \
	persist.dbg.volte_avail_ovr=1 \
	persist.dbg.vt_avail_ovr=1 \
	persist.dbg.wfc_avail_ovr=1 \
	persist.vendor.radio.apm_sim_not_pwdn=1 \
	persist.radio.multisim.config=dsds \
	persist.radio.sw_mbn_update=0 \
	persist.vendor.radio.custom_ecc=1 \
	persist.vendor.radio.rat_on=combine \
	persist.vendor.radio.sib16_support=1 \
	ril.subscription.types=NV,RUIM \
	rild.libargs=-d/dev/smd0 \
	rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.default_network=20,20 \
	service.qti.ims.enabled=1 \
	persist.radio.aosp_usr_pref_sel=true \
	persist.vendor.radio.prefer_spn=1 \
	persist.vendor.qti.pie.telephony=1

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
	persist.timed.enable=true

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
	net.tcp.2g_init_rwnd=10

# UI
PRODUCT_PROPERTY_OVERRIDES += \
sys.use_fifo_ui=1

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

# Navbar
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=0

# Ram Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	ro.lge.proximity.delay=25 \
	mot.proximity.delay=25 \
	ro.telephony.call_ring.delay=0 \
	ring.delay=0 \
	windowsmgr.max_events_per_sec=0 \
	ro.min_pointer_dur=8 \
	ro.max.fling_velocity=12000 \
	ro.min.fling_velocity=8000 \
	ro.media.enc.jpeg.quality=100 \
	ro.config.hw_quickpoweron=truev
	persist.cust.tel.eons=1  \
	ro.config.hw_fast_dormancy=1 \
	persist.adb.notify=0 \
	ro.HOME_APP_ADJ=1
