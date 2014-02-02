#!/bin/sh

cd xcode
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios-sim -configuration Release -sdk iphonesimulator
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Debug
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Debug
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios-sim -configuration Debug -sdk iphonesimulator
cd ../android
ndk-build -j 4
rm -rf ../../../lib/android/armeabi*/*
mkdir -p ../../../lib/android/armeabi ../../../lib/android/armeabi-v7a
cp -rv obj/local/armeabi/libBox2D.a ../../../lib/android/armeabi/libBox2D.a
cp -rv obj/local/armeabi-v7a/libBox2D.a ../../../lib/android/armeabi-v7a/libBox2D.a

cd ..

