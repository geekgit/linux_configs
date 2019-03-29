#!/bin/bash
MountPath="/mnt/sdb1_fat32_rus"
DevicePath="/dev/sdb1"
sudo mkdir -p "${MountPath}"
sudo chown bionic:bionic "${MountPath}"
sudo chmod a+rwx "${MountPath}"
sudo mount -t vfat -o iocharset=cp1251,codepage=866,utf8=true,rw,uid=$(id -u),gid=$(id -g),umask=000 "${DevicePath}" "${MountPath}"
