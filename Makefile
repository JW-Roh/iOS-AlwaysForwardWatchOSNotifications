TARGET := iphone:clang:13.5:7.1
ARCHS = armv7 armv7s arm64 arm64e

include theos/makefiles/common.mk
TWEAK_NAME = AlwaysForwardNotifications
AlwaysForwardNotifications_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

#after-install::
#	install.exec "killall -9 bulletindistributord"

SUBPROJECTS += prefbundle
include $(THEOS_MAKE_PATH)/aggregate.mk
