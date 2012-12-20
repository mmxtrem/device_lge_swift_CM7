LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := Flash_lite
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_SDK_VERSION := current
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_REQUIRED_MODULES := libysshared.so libflashplayer.so libstagefright_froyo.so libstagefright_honeycomb.so

ALL_PREBUILT += ${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libflashplayer.so
${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libflashplayer.so: $(LOCAL_PATH)/libs/libflashplayer.so | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += ${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libysshared.so
${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libysshared.so: $(LOCAL_PATH)/libs/libysshared.so | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += ${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libstagefright_froyo.so
${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libstagefright_froyo.so: $(LOCAL_PATH)/libs/libstagefright_froyo.so | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += ${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libstagefright_honeycomb.so
${TARGET_OUT}/lib/plugins/com.adobe.flashplayer/libstagefright_honeycomb.so: $(LOCAL_PATH)/libs/libstagefright_honeycomb.so | $(ACP)
	$(transform-prebuilt-to-target)

include $(BUILD_PREBUILT)
