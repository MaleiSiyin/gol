#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#修改版本号
sed -i 's/OpenWrt/Bin AutoBuild $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/SakuraTv/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.11/g' package/base-files/files/bin/config_generate
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/
cd package
mkdir sakura
git clone https://github.com/destan19/OpenAppFilter && mv -f OpenAppFilter/* ./
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/garypang13/luci-app-eqos
git clone https://github.com/fw876/helloworld.git  && mv -f helloworld/* ./
git clone https://github.com/bin20088/luci-app-koolddns.git
#赋予koolddns权限
chmod 0755 luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755 luci-app-koolddns/root/usr/share/koolddns/aliddns
