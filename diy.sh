#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
# 切换内核
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' target/linux/x86/Makefile
# 添加新的包
git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-argon-mc
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/node-request.git package/lean/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus
# 更改管理密码为@@@@@@@@
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$EeK6vzkj$QYe0YvZJseS4rwAcVh0Qy.:18377/g' package/lean/default-settings/files/zzz-default-settings
