> xcrun simctl install booted /path/to/Your.app
> xcrun simctl launch booted com.yourcompany.yourapp

## Build using xcodebuild
```bash
# for debug
$ xcodebuild -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s' -workspace ./Credentialing.xcodeproj/project.xcworkspace -scheme Credentialing
# for release
$ xcodebuild -destination 'platform=iOS Simulator,OS=10.2,name=iPhone 6s' -workspace ./Credentialing.xcodeproj/project.xcworkspace -scheme Credentialing -configuration Release
```

## Run on device (ios simulator)
```bash
# run simulator windows
$ /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator -CurrentDeviceUDID EB23E014-23C7-49D2-83C5-80294824AD60
$ xcrun simctl install EB23E014-23C7-49D2-83C5-80294824AD60  /Users/admin/Library/Developer/Xcode/DerivedData/Credentialing-fucfgjdzabtjlobmfhzybfqyfrom/Build/Products/Debug-iphonesimulator/Credentialing.app
# run the following command if the app was built in debug mode, skip if release mode
# $ react-native start
$ xcrun simctl launch EB23E014-23C7-49D2-83C5-80294824AD60 com.trackitforlife.Credentialing
```