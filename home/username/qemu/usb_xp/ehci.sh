#!/bin/bash
FlashSize="16000000000B"
FlashUUID=$(uuidgen)
FlashName="qemu-${FlashUUID}"
FlashFormat="qcow2"
FlashFile="${FlashName}.${FlashFormat}.img"
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
qemu-img create -f "${FlashFormat}" "${FlashFile}" "${FlashSize}"

qemu-system-i386 -net none -enable-kvm -cdrom "${CDIso}" -vga vmware -drive file="${HDDFile}",format="${HDDFormat}" -m "${MemorySize}" -boot c -device usb-ehci -drive if=none,file="${FlashFile}",cache=none,id=flash,format="${FlashFormat}" -device usb-storage,id=usbflash,drive=flash,removable=on
