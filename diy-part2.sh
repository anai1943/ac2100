#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Clone community packages to package/community
mkdir package/community
pushd package/communit

# passwall 
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

#应用过滤 https://github.com/destan19/OpenAppFilter
git clone --depth=1 https://github.com/destan19/OpenAppFilter

popd
