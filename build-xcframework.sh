rm -rf ~/Desktop/Xcode13ClockHandRotationEffect-iphoneos.xcarchive
rm -rf ~/Desktop/Xcode13ClockHandRotationEffect-iphonesimulator.xcarchive
rm -rf ~/Desktop/Xcode13ClockHandRotationEffect.xcframework

xcrun xcodebuild archive \
 -scheme Xcode13ClockHandRotationEffect \
 -archivePath ~/Desktop/Xcode13ClockHandRotationEffect-iphoneos.xcarchive \
 -sdk iphoneos \
 SKIP_INSTALL=NO



xcrun xcodebuild archive \
 -scheme Xcode13ClockHandRotationEffect \
 -archivePath ~/Desktop/Xcode13ClockHandRotationEffect-iphonesimulator.xcarchive \
 -sdk iphonesimulator \
 SKIP_INSTALL=NO



xcrun xcodebuild -create-xcframework \
 -framework ~/Desktop/Xcode13ClockHandRotationEffect-iphonesimulator.xcarchive/Products/Library/Frameworks/Xcode13ClockHandRotationEffect.framework \
 -framework ~/Desktop/Xcode13ClockHandRotationEffect-iphoneos.xcarchive/Products/Library/Frameworks/Xcode13ClockHandRotationEffect.framework \
 -output ~/Desktop/Xcode13ClockHandRotationEffect.xcframework
