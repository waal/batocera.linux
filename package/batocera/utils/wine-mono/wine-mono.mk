################################################################################
#
# wine - mono addon
#
################################################################################

WINE_MONO_VERSION = 4.9.4
WINE_MONO_SOURCE = wine-mono-bin-$(WINE_MONO_VERSION).tar.gz
WINE_MONO_SITE = https://dl.winehq.org/wine/wine-mono/$(WINE_MONO_VERSION)

define WINE_MONO_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/wine/mono/wine-mono-$(WINE_MONO_VERSION)
	cp -pr $(@D)/* $(TARGET_DIR)/usr/share/wine/mono/wine-mono-$(WINE_MONO_VERSION)/
endef


$(eval $(generic-package))
