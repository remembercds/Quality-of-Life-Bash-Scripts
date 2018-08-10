#!/bin/sh
#syncs the stuff thumb drive to the main folder on pc
rsync -auh --delete /media/bob/USB/main/ ~/Documents/main/
rsync -auh --delete ~/Documents/main/ /media/bob/USB/main/ 
#replace file locations with your respective directories















