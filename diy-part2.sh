#!/bin/bash
#
# Copyright (c) 2022 YoungerKayn <https://lemyeung.ga>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/Younger/Config-Maker
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# This is an example, you can edit/remove it as needed.
# Modify default IP
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

# 取消原主题luci-theme-bootstrap 为默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改 argon 为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 删除原默认主题
rm -rf package/lean/luci-theme-bootstrap
