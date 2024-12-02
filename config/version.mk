TEQUILA_PLATFORM_VERSION = sylvix

TEQUILA_BUILD_DATE := $(shell date -u +%Y%m%d)

TEQUILA_BUILDTYPE ?= UNOFFICIAL

ifeq ($(TEQUILA_BUILDTYPE), OFFICIAL)
OFFICIAL_DEVICES = $(shell cat vendor/lineage/tequila.devices)
  FOUND_DEVICE =  $(filter $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE))
      TEQUILA_BUILDTYPE := OFFICIAL
    else
      TEQUILA_BUILDTYPE := UNOFFICIAL
    endif
endif

# Internal version
TEQUILA_VERSION := $(TEQUILA_PLATFORM_VERSION)-$(TEQUILA_BUILDTYPE)_$(TEQUILA_BUILD_DATE)

# Display version
TEQUILA_DISPLAY_VERSION := $(TEQUILA_VERSION)
