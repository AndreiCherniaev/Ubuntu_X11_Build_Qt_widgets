To build Qt (themself) with widgets for Ubuntu 22 (X11 windowing system).

# Ubuntu 22 with X11
Please switch to Xorg istead of Wayland. 
<p align="center">
  <img alt="How switch to X11 in Ubuntu" src="img/How switch to X11 in Ubuntu.png" width="320">
  <br>
    <em>How switch to X11 in Ubuntu</em>
</p>

Test
```
echo $XDG_SESSION_TYPE
```
Should be x11  
Then make avaliable all dev pack
```
sudo nano /etc/apt/sources.list
```
and uncomment all strings with "deb-src"

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

<p align="center">
  <img alt="This is how example application looks in Ubuntu" src="img/example window.png" width="200">
  <br>
    <em>example application</em>
</p>

# linuxFB
This step is optional. If you want try to run your app with linuxfb then use
```
# sudo adduser $USER video
export QT_DEBUG_PLUGINS=1
# export QT_QPA_PLATFORM=linuxfb
# export QT_QPA_EGLFS_FB=/dev/fb0
"$MyBaseDir/example/readme.sh"
```
