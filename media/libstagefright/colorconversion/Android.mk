LOCAL_PATH:= $(call my-dir)
ifneq ($(strip $(BOARD_USES_MTK_HARDWARE)),true)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                     \
        ColorConverter.cpp            \
        SoftwareRenderer.cpp

LOCAL_C_INCLUDES := \
        $(TOP)/frameworks/native/include/media/openmax \
        $(TOP)/hardware/msm7k \
        $(TOP)/external/libyuv/files/include

LOCAL_STATIC_LIBRARIES := \
        libyuv_static \

LOCAL_CFLAGS += -Werror
LOCAL_CLANG := true
LOCAL_SANITIZE := signed-integer-overflow

LOCAL_MODULE:= libstagefright_color_conversion

include $(BUILD_STATIC_LIBRARY)
endif