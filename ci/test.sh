#!/bin/bash
set -xeu
set -o pipefail

config="$1"

xcrun xcodebuild \
    -scheme "Github Actions Example" \
    -workspace "Github Actions Example.xcworkspace" \
    -configuration $config \
    -derivedDataPath build \
    test | xcpretty --test --color

# -destination 'platform=iOS Simulator,name=iPhone 12' \
