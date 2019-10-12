LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= mobibench_exe.cpp mobibench.c sqlite3.c
LOCAL_MODULE:= mobibench

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../android $(call include-path-for, system-core)/cutils

LOCAL_SHARED_LIBRARIES := libicuuc \
            libicui18n \
            libutils

#ifneq ($(TARGET_ARCH),arm)
#LOCAL_LDLIBS += -L. -lsqlite
#LOCAL_LDLIBS += -L $(LOCAL_PATH) -lsqlite -llog
LOCAL_LDLIBS += -L $(LOCAL_PATH) -llog -landroid
#endif

LOCAL_CFLAGS += -DANDROID_APP -DSTDC_HEADERS

#LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE_TAGS := debug

###
APP_ALLOW_MISSING_DEPS := true
###


include $(BUILD_SHARED_LIBRARY)
