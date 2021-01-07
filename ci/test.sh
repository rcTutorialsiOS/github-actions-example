#!/bin/bash
set -xeu
set -o pipefail

config="$1"

xcrun xcodebuild \
    -scheme "Github Actions Example" \
    -workspace "Github Actions Example.xcworkspace" \
    -configuration $config \
    -destination 'platform=iOS Simulator,name=iPhone 12' \
    -only-testing:Github\ Actions\ ExampleTests \
    -derivedDataPath build \
    test | xcpretty --test --color
    # test-without-building | xcpretty --test --color
