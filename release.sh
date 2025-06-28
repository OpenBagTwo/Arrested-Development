#!/usr/bin/env bash
set -e
version=v$(date '+%y.%m.%d')
mkdir -p release
pack_name="Arrested Development"
## Support
rm -rf overlay_48/*
cp -pfr data/ overlay_48/
## Rename functions to function and advancements to advancement
find overlay_48/ -name functions | sed 's/functions/function/' | xargs -I '{}' cp -r {}'s' {}
find overlay_48/ -name functions | xargs -I '{}' rm -r {}
find overlay_48/ -name advancements | sed 's/advancements/advancement/' | xargs -I '{}' cp -r {}'s' {}
find overlay_48/ -name advancements | xargs -I '{}' rm -r {}

echo Compressing $pack
zip -rq release/"$pack_name $version".zip data LICENSE pack.mcmeta pack.png README.md overlay*
echo Created release/"$pack_name $version".zip
