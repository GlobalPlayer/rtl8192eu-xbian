# rtl8192eu-xbian
A pre-compiled driver for the realtek 8192eu family for Xbian 4.1.13+ on the Raspberry Pi 2b.

# How to use

$ wget https://github.com/djcf/rtl8192eu-xbian/raw/master/8192eu.ko

$ sudo mv 8192eu.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless

$ sudo mv 8192eu.conf /etc/modprobe.d

$ sudo depmod -a

$ sudo modprobe 8192eu

Now if you type

$ sudo ifconfig

You should see the new interface wlan0.

Alternatively, run the following:

$ curl -SLs https://github.com/djcf/rtl8192eu-xbian/blob/master/install.sh | sudo bash

# hostapd

hostapd does not directly use the driver you have just installed, but I have found success with the following hacked binaries.

* http://raspberry-at-home.com/files/hostapd.gz -- 0.8.

* http://dl.dropbox.com/u/1663660/hostapd/hostapd.zip

keywords: rtl, realtek 8192eu, linux, kernel, driver, wifi, wlan0, xbian, raspberry pi 2, rbp2, rbpii, rasbperry pi ii.
