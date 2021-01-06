#!/bin/bash
config="$1"
project_path="$2"

cd $project_path

xcrun xcodebuild \
    -scheme "Github Actions Example" \
    -workspace "Github Actions Example.xcworkspace" \
    -configuration $config \
    -destination 'platform=iOS Simulator,name=iPhone 12' \
    -derivedDataPath build \
    | xcpretty
