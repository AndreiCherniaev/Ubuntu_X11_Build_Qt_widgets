To build Qt (themself) with widgets for Ubuntu 22.

# Prepare
```
git clone https://github.com/AndreiCherniaev/Ubutu_Build_Qt_widgets.git
export MyBaseDir="$PWD/Ubutu_Build_Qt_widgets"
```

# Build Qt themself
Install dependency
```
"$MyBaseDir/Qt_themself/Ubuntu_dependency.sh"
```
Build Qt themself
```
"$MyBaseDir/Qt_themself/readme.sh"
```

# Build example
```
echo $XDG_SESSION_TYPE
export QT_DEBUG_PLUGINS=1
# export QT_QPA_PLATFORM=linuxfb
# export QT_QPA_EGLFS_FB=/dev/fb0
"$MyBaseDir/example/readme.sh"
```
