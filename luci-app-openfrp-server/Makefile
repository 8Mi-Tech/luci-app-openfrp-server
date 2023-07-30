# 
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-openfrp-server
PKG_VERSION=1.0.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-openfrp-server
SECTION:=luci
CATEGORY:=LuCI
SUBMENU:=3. Applications
TITLE:= LuCI config tools for serial2mqtt
PKGARCH:=all
#DEPENDS:=+serial2mqtt
endef

define Package/luci-app-openfrp-server/description
	This package contains LuCI configuration pages for serial2mqtt.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-openfrp-server/install

	$(INSTALL_DIR)  $(1)/etc/config
	$(INSTALL_DIR)  $(1)/etc/init.d
	$(INSTALL_DIR)  $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR)  $(1)/usr/lib/lua/luci/controller

	$(INSTALL_CONF) ./files/etc/config/openfrp-server $(1)/etc/config/openfrp-server
	$(INSTALL_BIN)  ./files/etc/init.d/openfrp-server $(1)/etc/init.d/openfrp-server
	$(INSTALL_DATA) ./files/usr/lib/lua/luci/model/cbi/openfrp-server $(1)/usr/lib/lua/luci/model/cbi/openfrp-server
	$(INSTALL_DATA) ./files/usr/lib/lua/luci/controller/openfrp-server $(1)/usr/lib/lua/luci/controller/openfrp-server

endef

$(eval $(call BuildPackage,$(PKG_NAME)))