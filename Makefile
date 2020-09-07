TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Discord
FINALPACKAGE = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AnotherColorPicker

AnotherColorPicker_FILES = Tweak.x
AnotherColorPicker_FRAMEWORKS = UIKit
AnotherColorPicker_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
