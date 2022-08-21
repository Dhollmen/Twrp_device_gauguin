LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gauguin)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Needed by xiaomi.eu
BOARD_RECOVERY_IMAGE_PREPARE := \
    sed -i 's/ro.build.date.utc=.*/ro.build.date.utc=0/' $(TARGET_RECOVERY_ROOT_OUT)/prop.default;

endif
