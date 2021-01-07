#!/bin/bash
set -xeu
set -o pipefail

config="$1"

xcrun xcodebuild \
    -scheme "Github Actions Example" \
    -workspace "Github Actions Example.xcworkspace" \
    -configuration $config \
    -destination 'platform=iOS Simulator,name=iPhone 12' \
    -derivedDataPath build \
    test | xcpretty --test --color
