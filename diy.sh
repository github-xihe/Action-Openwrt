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
#git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-argon-mc
#更改管理密码为@@@@@@@@
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$EeK6vzkj$QYe0YvZJseS4rwAcVh0Qy.:18377/g' package/lean/default-settings/files/zzz-default-settings
