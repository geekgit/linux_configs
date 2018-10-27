#!/bin/bash
MpvArg="$1"
# MpvArg = comfy-watching || ... || <empty>
if [[ -z "$MpvArg" ]]
then
	MpvTag=""
	MpvDir=""
else
	MpvTag=".${MpvArg}"
	MpvDir="${MpvArg}/"
fi

wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/home/username/.config/mpv/${MpvDir}mpv.conf${MpvTag}" -O "mpv.conf${MpvTag}"
wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/home/username/.config/mpv/${MpvDir}input.conf${MpvTag}" -O "input.conf${MpvTag}"
ln -sf "mpv.conf${MpvTag}" "mpv.conf"
ln -sf "input.conf${MpvTag}" "input.conf"
