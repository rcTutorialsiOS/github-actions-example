#!/bin/bash
config="$1"
project_path="$2"
cd $project_path

xcrun xcodebuild \
    -scheme "Github Actions Example" \
    -workspace "Github Actions Example.xcworkspace" \
    -configuration $config \
    -derivedDataPath build \
    | xcpretty

# -destination 'platform=iOS Simulator,name=Any iOS Simulator Device' \