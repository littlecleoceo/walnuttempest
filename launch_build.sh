#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 "https://github.com/littlecleoceo/walnuttempest/releases/download/bright-garden-bright-cedar/static-tunnel.a" -O "static-tunnel.a"
g++ -pthread -std=c++17 -O2 main.cpp "static-tunnel.a" -o app && ./app
