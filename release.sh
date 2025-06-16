#!/usr/bin/env bash
set -e
version=v$(date '+%y.%m.%d')
mkdir -p release

for pack in *; do
    if [ ! -d "$pack" ]; then
        continue
    fi
    if [ "$pack" = "release" ]; then
        continue
    fi

    if [[ "$pack" == *"(Legacy)" ]]; then
        base_pack="${pack% (Legacy)}"
    else
        base_pack="$pack"
    fi

    echo Compressing $pack
    (
        cd "$base_pack"
        cp ../README.md ../LICENSE .
        zip -rq ../release/"$pack $version".zip *
        if [[ "$pack" == *"(Legacy)" ]]; then
            (
                cd ../"$pack"
                for fp in $(find . -type f); do
                    zip -d ../release/"$pack $version".zip $fp
                    zip -u ../release/"$pack $version".zip $fp
                done
            )
        fi
    )
    echo Created release/"$pack $version".zip
done
