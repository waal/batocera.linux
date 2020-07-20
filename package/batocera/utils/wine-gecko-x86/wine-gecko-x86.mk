################################################################################
#
# wine - gecko x86 addon
#
################################################################################

WINE_GECKO_X86_VERSION = 2.47.1
WINE_GECKO_X86_SOURCE = wine-gecko-$(WINE_GECKO_X86_VERSION)-x86.tar.bz2
WINE_GECKO_X86_SITE = https://dl.winehq.org/wine/wine-gecko/$(WINE_GECKO_X86_VERSION)

define WINE_GECKO_X86_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/wine/gecko/wine-gecko-$(WINE_GECKO_X86_VERSION)-x86
	cp -pr $(@D)/* $(TARGET_DIR)/usr/share/wine/gecko/wine-gecko-$(WINE_GECKO_X86_VERSION)-x86/
endef

$(eval $(generic-package))
