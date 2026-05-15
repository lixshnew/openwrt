# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

DEVICE_VARS += UBOOT_DEVICE_NAME

define Build/Compile
	$(CP) $(LINUX_DIR)/COPYING $(KDIR)/COPYING.linux
endef

### Image scripts ###
define Image/Prepare
	mkdir -p $(TARGET_DIR)/boot
	cp $(KDIR)/uImage.gz $(TARGET_DIR)/boot/uImage
endef

##	$(CP) $(DTS_DIR)/$(DEVICE_DTS).dtb $@.boot/rockchip.dtb
define Build/boot-common
	# This creates a new folder copies the dtb (as rockchip.dtb) 
	# and the kernel image (as kernel.img)
	rm -fR $@.boot
	mkdir -p $@.boot

	$(CP) $(IMAGE_KERNEL) $@.boot/kernel.img
endef

define Build/boot-script
	# Make an U-boot image and copy it to the boot partition
#	mkimage -A loongarch -O linux -T script -C none -a 0 -e 0 -d $(if $(1),$(1),mmc).bootscript $@.boot/boot.scr
endef


### Devices ###
define Device/Default
  PROFILES := Default
  KERNEL_NAME := uImage.gz
  KERNEL_SUFFIX := -uImage
  KERNEL := kernel-bin
#  IMAGES := sysupgrade.img.gz
#  DEVICE_DTS = loongson/$$(SOC)-$(lastword $(subst _, ,$(1)))
endef

include $(SUBTARGET).mk

$(eval $(call BuildImage))
