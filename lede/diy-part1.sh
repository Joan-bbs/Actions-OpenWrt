#!/bin/bash
#
# Add a feed source
#1·在feeds.conf.default文件首行添加源码
#sed -i '1i src-git moruiris https://github.com/moruiris/openwrt-packages;lede' feeds.conf.default
#2·在feeds.conf.default文件末尾添加源码
#echo 'src-git moruiris https://github.com/moruiris/openwrt-packages;lede' >>feeds.conf.default
#3·直接在./package添加源码
#git clone -b lede https://github.com/moruiris/openwrt-packages ./package/moruiris

# 移除 openwrt feeds 自带的核心库
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages

# 移除 openwrt feeds 过时的luci版本
rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2 package/passwall2-luci
