#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
sed -i 's/OpenWrt/SakuraTv/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.11/g' package/base-files/files/bin/config_generate
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/
cd package
mkdir sakura
git clone https://github.com/destan19/OpenAppFilter && mv -f OpenAppFilter/* ./
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/garypang13/luci-app-eqos
