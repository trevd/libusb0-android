LOCAL_PATH:= $(call my-dir)
#----------------------------------------------------------------
# libusb-0.1.12
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        descriptors.c \
        error.c \
        linux.c \
        usb.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC


ifeq ($(TARGET_BUILD_TYPE),release)
        LOCAL_CFLAGS += -O2
endif

LOCAL_MODULE:= libusb-0.1.12
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)


#----------------------------------------------------------------