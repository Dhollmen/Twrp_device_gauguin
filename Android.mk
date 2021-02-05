LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gauguin)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
