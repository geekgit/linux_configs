#!/bin/bash
MountPath="/mnt/sdb1_ntfs"
DevicePath="/dev/sdb1"
sudo mkdir -p "${MountPath}"
sudo chown bionic:bionic "${MountPath}"
sudo chmod a+rwx "${MountPath}"
sudo mount -t ntfs -o rw,nls=utf8,uid=$(id -u),gid=$(id -g),umask=000 "${DevicePath}" "${MountPath}"
