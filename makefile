#
# Makefile for Nubia Z11
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_z11.zip

# the location for local-ota to save target-file
local-previous-target-dir :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := FM MiuiCamera

local-miui-modified-apps := TeleService InCallUI
local-miui-modified-apps-smali := DeskClock MiuiSystemUI TelephonyProvider SecurityCenter \
SecurityCoreAdd MiuiKeyguard XiaomiServiceFramework Settings

PORT_PRODUCT := nian_z11

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# All apps need to be removed from original ZIP file
#local-remove-apps   :=

include phoneapps.mk


local-target-bit := 64

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp -rf other/system $(ZIP_DIR)/
	cp -rf ../other/system $(ZIP_DIR)/
	cp -rf other/boot.img $(ZIP_DIR)/boot.img
	cp -rf stockrom/system/lib64/libavcodec.so $(ZIP_DIR)/system/lib64/libavcodec.so
	cp -rf stockrom/system/lib64/libavformat.so $(ZIP_DIR)/system/lib64/libavformat.so
	cp -rf stockrom/system/lib64/libavutil.so $(ZIP_DIR)/system/lib64/libavutil.so
	rm -rf $(ZIP_DIR)/system/vendor/ChinaMobile
	rm -rf $(ZIP_DIR)/system/vendor/CmccPower
	rm -rf $(ZIP_DIR)/system/vendor/CTA
	rm -rf $(ZIP_DIR)/system/priv-app/CMSettings
	echo "import /system/default.prop" >> $(ZIP_DIR)/system/build.prop
	echo "ro.miui.type=hook" >> $(ZIP_DIR)/system/build.prop
	rm -rf $(ZIP_DIR)/system/media/audio/ui/bootup.wav
	touch $(ZIP_DIR)/system/media/audio/ui/bootup.wav
	@echo goodbye! miui prebuilt binaries!
	cp -rf stockrom/system/bin/app_process64 $(ZIP_DIR)/system/bin/app_process64
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
