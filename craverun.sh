#!/bin/bash
rm -rf crave_rom_builder
git clone https://$GH_TOKEN@github.com/rexcabrera2017/crave_rom_builder.git
cp -f crave_rom_builder/pull.sh pull.sh
chmod +x pull.sh
crave run --no-patch  -- "          #© crave.io Inc. 2017-2024
              #Thanks to UV n Team
        #no dual account just to build faster
              #respect the rule

rm -rf .repo/local_manifests 
git clone https://github.com/xc112lg/local_manifests -b main .repo/local_manifests
repo sync -c -j\$(nproc --all) --force-sync --no-clone-bundle --no-tags
 
source build/envsetup.sh
lunch lineage_h872-userdebug
m installclean
m bacon
"
. pull.sh
