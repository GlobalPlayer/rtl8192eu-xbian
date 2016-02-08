# rtl8192eu-xbian
A pre-compiled driver for the realtek 8192eu family for Xbian 4.1.13+ on the Raspberry Pi 2b.

# How to use

$ wget https://github.com/djcf/rtl8192eu-xbian/blob/master/8192eu.ko

$ sudo mv 8192eu.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless

$ sudo mv 8192eu.conf /etc/modprobe.d

$ sudo depmod -a

$ sudo modprobe 8192eu

Now if you type

$ sudo ifconfig

You should see the new interface wlan0.

keywords: rtl, realtek 8192eu, linux, kernel, driver, wifi, wlan0, xbian, raspberry pi 2, rbp2, rbpii, rasbperry pi ii.