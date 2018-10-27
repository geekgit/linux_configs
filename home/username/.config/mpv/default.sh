#!/bin/bash
wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/mpv-player/mpv/master/etc/mpv.conf" -O mpv.conf
wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/mpv-player/mpv/master/etc/input.conf" -O input.conf
chmod a+rw mpv.conf
chmod a+rw input.conf

