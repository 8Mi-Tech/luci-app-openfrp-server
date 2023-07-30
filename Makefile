# Copyright 2023-Now 8Mi_Yile (admin@8mi.tech)
# This is free software, licensed under the GNU General Public License v3.

include $(TOPDIR)/rules.mk

PKG_LICENSE:=GPL-3.0-or-later
PKG_MAINTAINER:=8Mi_Yile <admin@8mi.tech>
PKG_VERSION:=1.0

LUCI_TITLE:=Advanced Linksys Reboot Web UI
LUCI_URL:=https://github.com/8Mi-Tech/luci-app-openfrp-server
LUCI_DESCRIPTION:=Provides Web UI (found under System/Advanced Reboot) to reboot supported Linksys and ZyXEL routers to\
	an alternative partition. Also provides Web UI to shut down (power off) your device. 	Supported dual-partition\
	routers are listed at https://github.com/8Mi-Tech/luci-app-openfrp-server
LUCI_DEPENDS:=+openfrp-server
LUCI_PKGARCH:=all

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature