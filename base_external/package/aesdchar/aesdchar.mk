
##############################################################
#
# AESDCHAR 
#
##############################################################

$(eval $(kernel-module))
AESDCHAR_VERSION = '921bcd0a98044001ad82271e6a76d14e49ca63b1'
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-ECleverito.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
