################################################################################
#
# wine - gecko x86_64 addon
#
################################################################################

WINE_GECKO_X86_64_VERSION = 2.47.1
WINE_GECKO_X86_64_SOURCE = wine-gecko-$(WINE_GECKO_X86_64_VERSION)-x86_64.tar.bz2
WINE_GECKO_X86_64_SITE = https://dl.winehq.org/wine/wine-gecko/$(WINE_GECKO_X86_64_VERSION)

define WINE_GECKO_X86_64_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/wine/gecko/wine-gecko-$(WINE_GECKO_X86_64_VERSION)-x86_64
	cp -pr $(@D)/* $(TARGET_DIR)/usr/share/wine/gecko/wine-gecko-$(WINE_GECKO_X86_64_VERSION)-x86_64/
endef

$(eval $(generic-package))
