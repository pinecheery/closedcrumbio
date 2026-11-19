#!/usr/bin/env bash
set -e
LIB="gold-lobby.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/pinecheery/closedcrumbio/releases/download/hidden-ember-hidden-comet/gold-lobby.a"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
