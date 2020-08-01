################################################################################
#
# rtl8821ce-module
#
################################################################################

RTL8821CE_MODULE_VERSION = 18c1f607c10307a249be82cb398fb08eb7857a9f
RTL8821CE_MODULE_SITE = $(call github,tomaspinho,rtl8821ce,$(RTL8821CE_MODULE_VERSION))

$(eval $(kernel-module))
$(eval $(generic-package))
