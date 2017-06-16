#!/bin/bash

MONOLITH_URL="https://github.com/NPE-Developers/Monolith"
BRINGIT_URL="https://github.com/NPE-Developers/BringIt"

if [[ -z "$1" ]] && [[ $1 == '-d' ]]; then
    echo "====== Development Mode ======"
    $MONOLITH_URL="git@github.com:NPE-Developers/Monolith.git"
    $BRINGIT_URL="git@github.com:NPE-Developers/BringIt.git"
fi

git clone -b development $MONOLITH_URL ./packages/monolith
git clone -b development $BRINGIT_URL ./packages/bringit
meteor add monolith
meteor add bringit
