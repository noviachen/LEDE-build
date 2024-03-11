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

# 修改默认 IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i "s/luci-theme-bootstrap/luci-theme-argon/g" feeds/luci/collections/luci/Makefile
 
# 修改默认主机名（需要取消下面的注释）
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='LEDE'' package/lean/default-settings/files/zzz-default-settings
 
# 加入编译者信息（需要取消下面的注释）
sed -i "s/OpenWrt /LEDE build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 使用 jerrykuku/luci-theme-argon 主题
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
