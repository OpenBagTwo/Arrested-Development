#!/usr/bin/env bash
set -e
version=v$(date '+%y.%m.%d')
mkdir -p release
pack_name="Arrested Development"


echo Compressing $pack
zip -rq release/"$pack_name $version".zip data LICENSE pack.mcmeta pack.png README.md
echo Created release/"$pack_name $version".zip
