ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),swift)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libcutils

ifeq ($(TARGET_USES_OLD_LIBSENSORS_HAL),true)

LOCAL_SRC_FILES += sensors_ak8973.c

else

LOCAL_CFLAGS := -DLOG_TAG=\"Sensors2\"
LOCAL_SRC_FILES := 						\
				sensors.c 			\
				nusensors.cpp 			\
				InputEventReader.cpp		\
				SensorBase.cpp			\
				AkmSensor.cpp

endif

LOCAL_MODULE := sensors.swift
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

endif