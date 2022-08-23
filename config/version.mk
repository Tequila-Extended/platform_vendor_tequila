TEQUILA_PLATFORM_VERSION = tobacco

TEQUILA_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

TEQUILA_BUILDTYPE ?= UNOFFICIAL

TEQUILA_VERSION_SUFFIX := $(TEQUILA_BUILD_DATE)-$(TEQUILA_BUILDTYPE)$(TEQUILA_EXTRAVERSION)

# Internal version
TEQUILA_VERSION := $(TEQUILA_PLATFORM_VERSION)-$(TEQUILA_VERSION_SUFFIX)-$(TEQUILA_BUILD)

# Display version
TEQUILA_DISPLAY_VERSION := $(TEQUILA_PLATFORM_VERSION)-$(TEQUILA_VERSION_SUFFIX)
