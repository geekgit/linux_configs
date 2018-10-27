#!/bin/bash
mkdir -p "/home/${USERNAME}/.config/mpv/"
cd "/home/${USERNAME}/.config/mpv/"
MpvArg="$1"
# MpvArg = comfy-watching || dev-stat || force43 || <empty>
if [[ -z "$MpvArg" ]]
then
	MpvTag=""
	MpvDir=""
	RedirectFlag=false
else
	MpvTag=".${MpvArg}"
	MpvDir="${MpvArg}/"
	RedirectFlag=true
fi

if [[ "$RedirectFlag" = false ]]
then
	unlink "mpv.conf"
	unlink "input.conf"
fi

wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/home/username/.config/mpv/${MpvDir}mpv.conf${MpvTag}" -O "mpv.conf${MpvTag}"
wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/home/username/.config/mpv/${MpvDir}input.conf${MpvTag}" -O "input.conf${MpvTag}"

if [[ "$RedirectFlag" = true ]]
then
	ln -sf "mpv.conf${MpvTag}" "mpv.conf"
	ln -sf "input.conf${MpvTag}" "input.conf"
fi
