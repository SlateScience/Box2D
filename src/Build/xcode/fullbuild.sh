#!/bin/sh

xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Debug
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Debug
