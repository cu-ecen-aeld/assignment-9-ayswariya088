
#####################
# LDD-MODULE
#####################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION =ec155a89b0cf0c9c204ed7f57004c77cf25dd2af
 #commit version number for A7-P2
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-ayswariya088.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# include the  scull and misc-modules subdirectory.
LDD_MODULE_SUBDIRS = scull/
LDD_MODULE_SUBDIRS += misc-modules/

# Adding all the dependencies(scull and misc-modules).
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
