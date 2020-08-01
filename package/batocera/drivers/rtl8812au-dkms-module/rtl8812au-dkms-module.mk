################################################################################
#
# rtl8812au-dkms-module
#
################################################################################

RTL8812AU_DKMS_MODULE_VERSION = 0def87df61b2564262b1c22fe56e157fc520e6cf
RTL8812AU_DKMS_MODULE_SITE = $(call github,meoow,rtl8812au-dkms,$(RTL8812AU_DKMS_MODULE_VERSION))
RTL8812AU_DKMS_MODULE_MODULE_SUBDIRS = 8812au-4.3.8

RTL8812AU_DKMS_MODULE_MODULE_MAKE_OPTS = CONFIG_RTL8812AU=m

$(eval $(kernel-module))
$(eval $(generic-package))
