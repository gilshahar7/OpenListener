ARCHS = arm64 armv7

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = OpenListenerprefs
OpenListenerprefs_FILES = OLPRootListController.m
OpenListenerprefs_INSTALL_PATH = /Library/PreferenceBundles
OpenListenerprefs_LIBRARIES = activator
OpenListenerprefs_FRAMEWORKS = UIKit
OpenListenerprefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/OpenListenerprefs.plist$(ECHO_END)
