#!/bin/bash
#ram status checking project.

FREE_RAM_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=500 #threshold of ram means tell us about only 500 mb is left.

if [[ $FREE_RAM_SPACE -lt $TH ]]
then
	echo "WARNING ram is running low"
else
	echo " ram space is sufficient - $FREE_RAM_SPACE M"
fi














