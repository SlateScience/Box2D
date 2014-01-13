#!/bin/sh

cd xcode
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Release
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D -configuration Debug
xcrun xcodebuild -project Box2D.xcodeproj -target Box2D-ios -configuration Debug
cd ../android
ndk-build -j 4
rm -rf ../../../lib/android/armeabi*/*
cp -rv obj/local/armeabi/libBox2D.a ../../../lib/android/armeabi/libBox2D.a
cp -rv obj/local/armeabi-v7a/libBox2D.a ../../../lib/android/armeabi-v7a/libBox2D.a

cd ..

