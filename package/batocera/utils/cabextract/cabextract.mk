################################################################################
#
# cabextract
#
################################################################################

CABEXTRACT_VERSION = 1.9.1
CABEXTRACT_SOURCE = cabextract-$(CABEXTRACT_VERSION).tar.gz
CABEXTRACT_SITE = https://www.cabextract.org.uk

$(eval $(autotools-package))
