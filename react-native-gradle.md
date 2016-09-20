### Config the sdk
http://stackoverflow.com/questions/19794200/gradle-android-and-the-android-home-sdk-location

### Set build tools
http://stackoverflow.com/questions/27272605/failed-to-find-build-tools-revision-21-1-1-sdk-up-to-date

### open sdk manager
```
$ android
$ android avd # open avd
```

### install genymotion
http://sysads.co.uk/2014/06/install-genymotion-in-ubuntu-14-04/

### Fix react native start ENOSPC
```
$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
# source: https://github.com/fbsamples/f8app/issues/55
```

or use wathman: https://github.com/facebook/react-native/issues/3565