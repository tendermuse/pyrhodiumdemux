#!/usr/bin/env bash
set -e
REPO="tendermuse/pyrhodiumdemux"
TAG="bright-ember-eager-comet"
LIB="refined-layer.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
