sed -i 's/OpenWrt/SakuraTv/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.16/g' package/base-files/files/bin/config_generate
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/
