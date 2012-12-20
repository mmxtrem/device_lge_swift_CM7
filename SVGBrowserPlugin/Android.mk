LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := SVGBrowserPlugin
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_SDK_VERSION := current
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_REQUIRED_MODULES := libsvgplugin

#################################################
# Native Library
#################################################

#LOCAL_PREBUILT_LIBS := libsvgplugin.so

ifneq "$(wildcard $(LOCAL_PATH)/libs/armeabi/libsvgplugin.so)" ""
ALL_PREBUILT += ${TARGET_OUT}/lib/plugins/com.android.svgplugin/libsvgplugin.so
${TARGET_OUT}/lib/plugins/com.android.svgplugin/libsvgplugin.so: $(LOCAL_PATH)/libs/armeabi/libsvgplugin.so | $(ACP)
	$(transform-prebuilt-to-target)
endif
#include $(BUILD_MULTI_PREBUILT)
include $(BUILD_PREBUILT)
#include $(call all-makefiles-under,$(LOCAL_PATH))
