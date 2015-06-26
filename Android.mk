LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_INSTALL_MODULES:=on

include $(LOCAL_PATH)/sdk/native/jni/OpenCV.mk

#
# use += for any LOCAL_XXX because they are set inside OpenCV.mk
#

LOCAL_MODULE    := OpenCV
LOCAL_SRC_FILES := OpenCV.cpp  # dummy file

LOCAL_CPPFLAGS	+= -frtti -fexceptions -std=c++11 -O3

LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)
LOCAL_EXPORT_CPPFLAGS := $(LOCAL_CPPFLAGS)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_EXPORT_LDLIBS := $(LOCAL_LDLIBS)

include $(BUILD_STATIC_LIBRARY)