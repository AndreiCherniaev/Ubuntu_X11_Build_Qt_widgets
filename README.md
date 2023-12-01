To build Qt (themself) with widgets for Ubuntu 22.

# Ubuntu 22 with X11
Please switch to Xorg istead of Wayland. Test
```
echo $XDG_SESSION_TYPE
```
Should be x11

# Prepare
```
git clone https://github.com/AndreiCherniaev/Ubutu_Build_Qt_widgets.git
export MyBaseDir="$PWD/Ubutu_Build_Qt_widgets"
```

# Build Qt themself
Install dependency
```
. "$MyBaseDir/Qt_themself/Ubuntu_dependency.sh"
```
Build Qt themself
```
"$MyBaseDir/Qt_themself/readme.sh"
```

# Build example
```
export QT_DEBUG_PLUGINS=1 #usually no need, use in case of error
"$MyBaseDir/example/readme.sh"
```

# linuxFB
This step is optional. If you want try to run your app with linuxfb then use
```
# sudo adduser $USER video
export QT_DEBUG_PLUGINS=1
# export QT_QPA_PLATFORM=linuxfb
# export QT_QPA_EGLFS_FB=/dev/fb0
"$MyBaseDir/example/readme.sh"
```
