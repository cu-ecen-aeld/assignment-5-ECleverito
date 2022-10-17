##############################################################
#
# LDD 
#
##############################################################

LDD_VERSION= '4d4b310d13ab55ab0a11824eae1ddd9cf8b61dea'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-ECleverito.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define LDD_BUILD_CMDS
	$(MAKE) 
endef

define LDD_INSTALL_TARGET_CMDS
 	$(INSTALL) -d 0755 $(TARGET_DIR)/lib/modules/5.15.18/extra/
 	$(INSTALL) -m 0755 $(@D)/misc-modules/scull.ko $(TARGET_DIR)/lib/modules/5.15.18/extra/
 	$(INSTALL) -m 0755 $(@D)/misc-modules/faulty.ko $(TARGET_DIR)/lib/modules/5.15.18/extra/
 	$(INSTALL) -m 0755 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/modules/5.15.18/extra/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
