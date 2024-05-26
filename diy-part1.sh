#!/bin/bash
#
# Copyright (c) 2022 YoungerKayn <https://lemyeung.ga>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/Younger/Config-Maker
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
