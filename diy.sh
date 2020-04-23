#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
# 添加新的包
git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-argon-mc
