// SPDX-License-Identifier: MIT

#ifndef __AVD_H__
#define __AVD_H__

#include "util.h"

#define AVD_CAPABILITY_HEVC BIT(0)
#define AVD_CAPABILITY_H264 BIT(1)
#define AVD_CAPABILITY_VP9  BIT(2)
#define AVD_CAPABILITY_AV1  BIT(3)

#define AVD_CONFIG_MAGIC    ((u32)'A' | ((u32)'V' << 8) | ((u32)'D' << 16) | ((u32)'c' << 24))

struct avd_config {
    u32 magic;
    u32 codecs;
    u32 _pad[62];
};

#endif /* __AVD_H__ */
