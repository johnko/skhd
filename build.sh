#!/usr/bin/env bash
set -euo pipefail

# sudo xcode-select -switch /Library/Developer/CommandLineTools
export CPATH="$(xcrun --show-sdk-path)/usr/include"
export SDKROOT=$(xcrun --show-sdk-path)
make install
codesign -fs - bin/skhd
