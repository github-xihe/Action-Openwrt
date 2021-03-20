#!/bin/bash
#=================================================

#修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#更改管理密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$EeK6vzkj$QYe0YvZJseS4rwAcVh0Qy.:18377/g' package/lean/default-settings/files/zzz-default-settings

#添加一些软件包
