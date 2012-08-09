#!/bin/sh
# usage: scan-receipt.sh identifier
#

# find scanner with "scanimage -L"
DEVICE="hpaio:/usb/Photosmart_C4400_series?serial=MY96HR12KW0557"

# scan image
scanimage -d $DEVICE --mode Lineart --resolution 300  > test.pnm

# crop image

# convert image

