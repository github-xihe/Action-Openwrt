#!/bin/bash
#=================================================

#修改默认IP
sed -i 's/192.168.1.1/192.168.2.5/g' package/base-files/files/bin/config_generate

#更改管理密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$erud5AEi$5TlK2f6576IZ9r1E0pysq0:18688/g' package/emortal/default-settings/files/zzz-default-settings
