---
title: debianIP配置模板
date: 2019-08-29 16:40:37
tags: linux
---

![avatar](/debianIP配置模板/u20190829_0.jpg "debianIP配置")
#vi /etc/network/interfaces
## 配置静态ip
#自动开启
auto eth0
#地址掩码网关
iface eth0 inet static
address 192.168.1.5
netmask 255.255.255.0
gateway 192.168.1.1

## 配置动态ip

auto eth0
iface eth0 inet dhcp

##如果vmware下需要设置静态ip就加入下面的
#vi /etc/resolv.conf
nameserver 192.168.1.1
