#!/bin/bash
HDDName="usb_xp"
HDDFormat="vdi"
HDDFile="${HDDName}.${HDDFormat}"
HDDSize="32G"
CDIso="cd.iso"
MemorySize="4G"

if [ ! -f "${HDDFile}" ]
then
    qemu-img create -f "${HDDFormat}" "${HDDFile}" "${HDDSize}"
fi

qemu-system-i386 -net none -enable-kvm -cdrom "${CDIso}" -vga vmware -drive file="${HDDFile}",format="${HDDFormat}" -m "${MemorySize}" -boot c
