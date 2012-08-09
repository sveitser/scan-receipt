#!/bin/sh
# usage: scan-receipt.sh identifier [date] 
# output YY_MM_DD_identifier.pdf resp. date_identifier.pdf
#

# find scanner with "scanimage -L"
DEVICE="hpaio:/usb/Photosmart_C4400_series?serial=MY96HR12KW0557"

if [ -z $2 ]; then DATE=`date +%y_%m_%d`; else DATE=$2; fi

FNAME=${DATE}_${1}.pdf

if [ -f $FNAME ]; then echo "File $FNAME exists. Change the name."; exit 1; fi

# scan image
scanimage -d $DEVICE --mode Lineart --resolution 300 --format=tiff > tmp.tiff

# convert image
tiff2pdf tmp.tiff > $FNAME

rm -rf tmp.tiff
