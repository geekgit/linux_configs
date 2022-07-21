#!/bin/bash
replace() {
	Rule="$1"
	Sed1="s/bionic/\${USER}/g"
	Sed2="s/focal/\${USER}/g"
	sed -i "${Sed1}" "${Rule}"
	sed -i "${Sed2}" "${Rule}"	
}

replace "00-rtlsdr.rules"
replace "01-temp-sensor.rules"
replace "02-nakasi.rules"
replace "03-iyokan-flash.rules"
replace "04-iyokan-fastboot.rules"
replace "05-iyokan-recovery-sideload-adb.rules"
replace "06-huawei-e1550.rules"
replace "07-huawei-e1550-modem-on.rules"
replace "08-phone-000.rules"
replace "10-block-ignore.rules"
replace "11-nakasi-debug.rules"
replace "12-nakasi-fastboot.rules"
