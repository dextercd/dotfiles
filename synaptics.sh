#!/bin/sh

if [ $(which synclient > /dev/null) ]; then
	exit;
fi

synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2

synclient PalmDetect=1
