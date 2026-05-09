# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

ARCH:=loongarch64
BOARD:=loongson
BOARDNAME:=Loongson
FEATURES:=ext4 usb display rootfs-part boot-part ubifs
SUBTARGETS:=ls2k1000

KERNEL_PATCHVER:=6.12

define Target/Description
	Build firmware image for Loongson SoC devices.
endef

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += uboot-envtools partx-utils e2fsprogs mkf2fs 

KERNELNAME:=uImage.gz

$(eval $(call BuildTarget))
