PATHSEP?=/
BUILDROOT?=build

BUILDDIR?=$(BUILDROOT)$(PATHSEP)$(CC)
BUILDPATH?=$(BUILDDIR)$(PATHSEP)

ifndef PREFIX
	INSTALL_ROOT=$(BUILDPATH)
else
	INSTALL_ROOT=$(PREFIX)$(PATHSEP)
	ifeq ($(INSTALL_ROOT),/)
	INSTALL_ROOT=$(BUILDPATH)
	endif
endif

INSTALL_ROOT?=$(BUILDPATH)

all: install

install:
	mkdir -p $(INSTALL_ROOT)include
	cp ./debug.h $(INSTALL_ROOT)include/debug.h

.PHONY: clean

clean:
	-rm -dr $(BUILDROOT)
