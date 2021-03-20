#!/bin/bash
#=================================================
# 切换内核
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' target/linux/x86/Makefile

# 添加软件包
git clone https://github.com/garypang13/luci-app-bypass                     package/diy/luci-app-bypass
git clone https://github.com/garypang13/smartdns-le                         package/diy/smartdns-le
svn co https://github.com/garypang13/openwrt-packages/trunk/chinadns-ng     package/diy/chinadns-ng
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan-go       package/diy/trojan-go
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan-plus     package/diy/trojan-plus
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb   package/diy/lua-maxminddb

find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
