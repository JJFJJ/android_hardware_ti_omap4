LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
	G711DecTest.c \

LOCAL_C_INCLUDES := \
	$(TI_OMX_SYSTEM)/common/inc \
	$(TI_OMX_COMP_C_INCLUDES) \
	$(TI_OMX_AUDIO)/g711_dec/inc

LOCAL_SHARED_LIBRARIES := $(TI_OMX_COMP_SHARED_LIBRARIES) \
	libOMX_Core

LOCAL_CFLAGS := $(TI_OMX_CFLAGS) -DOMX_DEBUG

LOCAL_MODULE:= G711Decoder_Test

include $(BUILD_EXECUTABLE)