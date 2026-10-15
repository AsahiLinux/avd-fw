// SPDX-License-Identifier: MIT

#include "avd.h"
#include "config.h"

__attribute__((section(".config"), used))
const struct avd_config config = {
    .magic  = AVD_CONFIG_MAGIC,
    .codecs = (AVD_ENABLE_CODEC_AV1  ?  AVD_CAPABILITY_AV1  : 0) |
              (AVD_ENABLE_CODEC_H264 ?  AVD_CAPABILITY_H264 : 0) |
              (AVD_ENABLE_CODEC_H265 ?  AVD_CAPABILITY_HEVC : 0) |
              (AVD_ENABLE_CODEC_VP9  ?  AVD_CAPABILITY_VP9  : 0),
};
