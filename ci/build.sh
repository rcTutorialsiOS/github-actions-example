#!/bin/bash
config="$1"

xcrun xcodebuild \
    -scheme "Github Actions Example" \
    -workspace "Github Actions Example.xcworkspace" \
    -configuration $config \
    -derivedDataPath build \
    | xcpretty

# -destination 'platform=iOS Simulator,name=Any iOS Simulator Device' \