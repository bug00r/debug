INSTALL_ROOT?=$(BUILDPATH)

install:
	mkdir -p $(INSTALL_ROOT)include
	cp ./debug.h $(INSTALL_ROOT)include/debug.h
