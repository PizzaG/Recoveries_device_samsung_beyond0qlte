#!/bin/bash

## Dark
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_beyond0qlte-eng
mka recoveryimage -j$(nproc --all)
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/Dark_Recovery-beyond0qlte.img
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/Dark_Recovery-beyond0qlte.tar
mv $OUT/DarkRecovery-beyond0qlte*.zip /media/pizzag/Android/Uploads/Recoveries/Dark_Recovery-beyond0qlte.zip
cd /media/pizzag/Android/Recoveries/Dark/8
make clean
#############################
#############################

