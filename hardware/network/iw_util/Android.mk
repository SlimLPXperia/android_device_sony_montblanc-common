# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

SRC := $(LOCAL_PATH)

NO_PKG_CONFIG=y
LOCAL_SRC_FILES := \
    $(SRC)/bitrate.c \
    $(SRC)/coalesce.c \
    $(SRC)/connect.c \
    $(SRC)/cqm.c \
    $(SRC)/event.c \
    $(SRC)/genl.c \
    $(SRC)/hwsim.c \
    $(SRC)/ibss.c \
    $(SRC)/info.c \
    $(SRC)/interface.c \
    $(SRC)/iw.c \
    $(SRC)/link.c \
    $(SRC)/mesh.c \
    $(SRC)/mpath.c \
    $(SRC)/offch.c \
    $(SRC)/p2p.c \
    $(SRC)/phy.c \
    $(SRC)/ps.c \
    $(SRC)/reason.c \
    $(SRC)/reg.c \
    $(SRC)/roc.c \
    $(SRC)/scan.c \
    $(SRC)/sections.c \
    $(SRC)/station.c \
    $(SRC)/status.c \
    $(SRC)/survey.c \
    $(SRC)/util.c \
    $(SRC)/wowlan.c \
    $(SRC)/version.c \
    $(SRC)/android-nl.c

LOCAL_C_INCLUDES := \
	$(SRC) \
	external/libnl-headers

LOCAL_CFLAGS := -O2 -g -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
LOCAL_CFLAGS += -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -DCONFIG_LIBNL20
LOCAL_LDFLAGS := -Wl,--no-gc-sections
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libnl
LOCAL_MODULE:=iw

include $(BUILD_EXECUTABLE)
