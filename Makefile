ARCHS = arm64 armv7
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OpenListener
OpenListener_FILES = Listener.xm
OpenListener_LIBRARIES = activator

include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	#Filter plist
	$(ECHO_NOTHING)if [ -f Filter.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/; cp Filter.plist $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/OpenListener.plist; fi$(ECHO_END)
	#PreferenceLoader plist
	$(ECHO_NOTHING)if [ -f Preferences.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/OpenListener; cp Preferences.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/OpenListener/; fi$(ECHO_END)
SUBPROJECTS += openlistenerprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
