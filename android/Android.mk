LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := Box2D
LOCAL_SRC_FILES := ../lib/android/$(TARGET_ARCH_ABI)/libBox2D.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../src
include $(PREBUILT_STATIC_LIBRARY)
