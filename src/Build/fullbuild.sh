#!/bin/sh

cd xcode
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Debug
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Debug
cd ../android
ndk-build -j 4
rm -rf ../../../lib/android/*
cp -rv libs/armeabi ../../../lib/android/armeabi
cp -rv libs/armeabi ../../../lib/android/armeabi-v7a

cd ..

