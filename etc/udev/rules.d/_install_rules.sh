#!/bin/bash
sudo rm /etc/udev/rules.d/00-rtlsdr.rules
sudo rm /etc/udev/rules.d/01-temp-sensor.rules
sudo rm /etc/udev/rules.d/02-nakasi.rules
sudo rm /etc/udev/rules.d/03-iyokan-flash.rules
sudo rm /etc/udev/rules.d/04-iyokan-fastboot.rules
sudo rm /etc/udev/rules.d/05-iyokan-recovery-sideload-adb.rules
sudo rm /etc/udev/rules.d/06-huawei-e1550.rules
sudo rm /etc/udev/rules.d/07-huawei-e1550-modem-on.rules
sudo rm /etc/udev/rules.d/08-phone-000.rules
sudo rm /etc/udev/rules.d/10-block-ignore.rules
sudo rm /etc/udev/rules.d/11-nakasi-debug.rules
sudo rm /etc/udev/rules.d/12-nakasi-fastboot.rules
sudo rm /etc/udev/rules.d/13-xun-flash.rules
sudo rm /etc/udev/rules.d/14-xun-fastboot.rules
sudo rm /etc/udev/rules.d/15-emerald-flash.rules
sudo rm /etc/udev/rules.d/16-emerald-fastboot.rules
sudo cp *.rules /etc/udev/rules.d
