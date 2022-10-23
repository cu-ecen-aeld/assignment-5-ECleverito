
##############################################################
#
# AESDCHAR 
#
##############################################################

AESDCHAR_VERSION = '17df0d4bb15b2ca86cd9cb1ff4a17806c7247f3d'
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-ECleverito.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

#define AESDCHAR_BUILD_CMDS
	#$(MAKE) 
#endef

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
