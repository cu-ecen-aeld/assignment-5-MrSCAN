################################################################################
#
# ldd3
#
################################################################################

LDD_VERSION = bbebaa7aa9151d5f72a8b2deeced9a9e04158905
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-MrSCAN.git
LDD_SITE_METHOD = git
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING
LDD_GIT_SUBMODULES=yes
LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc-modules
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define LDD_INSTALL_TARGET_CMDS
	@echo "Running LDD_INSTALL_TARGET_CMDS"
	$(INSTALL) -m 0755 $(@D)/scull/scull_load   $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull.init   $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load   $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef


$(eval $(kernel-module))
$(eval $(generic-package))