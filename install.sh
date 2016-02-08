#!/bin/bash
remote = https://github.com/djcf/rtl8192eu-xbian/blob/master
curl $remote/8192eu.ko > /lib/modules/$(uname -r)/kernel/drivers/net/wireless/8192eu.ko
curl $remote/8192eu.conf > /etc/modprobe.d/8192eu.conf
depmod -a
modprobe 8192eu
ifconfig | grep wlan0