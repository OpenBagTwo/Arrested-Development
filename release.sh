#!/usr/bin/env bash
set -e
version=v$(date '+%y.%m.%d')
mkdir -p release
pack_name="Arrested Development"
## Support
mkdir -p overlay_48
cp -pfr data/ overlay_48/

echo Compressing $pack
zip -rq release/"$pack_name $version".zip data LICENSE pack.mcmeta pack.png README.md overlay*
echo Created release/"$pack_name $version".zip
rm -rf overlay_48
