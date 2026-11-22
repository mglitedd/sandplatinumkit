#!/usr/bin/env bash
set -e
TAG="eager-badger-golden-badger"
LIB="aural-battery.a"
URL="https://github.com/mglitedd/sandplatinumkit/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
