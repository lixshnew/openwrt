# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

define Device/loongson_gd_ls2k1000_dp
  DEVICE_VENDOR := Loongson(GD)
  DEVICE_MODEL := LS2K1000 DP
  SOC := ls2k1000
  UBOOT_DEVICE_NAME := ls2k1000_dp 
  IMAGE/sysupgrade.img.gz := boot-common | boot-script ls2k1000_dp | gzip | append-metadata
#  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += loongson_gd_ls2k1000_dp

