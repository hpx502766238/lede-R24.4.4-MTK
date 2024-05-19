ARCH:=aarch64
SUBTARGET:=mt7622
BOARDNAME:=MT7622
CPU_TYPE:=cortex-a53
#DEFAULT_PACKAGES += wpad-mesh-openssl uboot-envtools swconfig bridger mtkhqos_util
DEFAULT_PACKAGES += uboot-envtools swconfig bridger mtkhqos_util
KERNELNAME:=Image dtbs

define Target/Description
	Build firmware images for MediaTek MT7622 ARM based boards.
endef
