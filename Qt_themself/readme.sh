# host: Ubuntu 22
# sudo apt-get build-dep cmake ninja-build
# sed -i 's/^Types: deb$/Types: deb deb-src/' /etc/apt/sources.list.d/ubuntu.sources # https://askubuntu.com/a/1512043/1087530
# sudo apt-get build-dep qtbase5-dev

# This steps use Qt mirror on github because of fast downloading from github. But you can use 
# git clone git://code.qt.io/qt/qt5.git qt5

export MyQtBaseDir="$MyBaseDir/Qt_themself"
# Prepare Qt
cd ${MyQtBaseDir}
# Qt's folders must be clear: remove and create its again
rm -Rf ${MyQtBaseDir}/build_host_powerfull/ ${MyQtBaseDir}/build_artifacts_host_powerfull/ && mkdir ${MyQtBaseDir}/build_host_powerfull ${MyQtBaseDir}/build_artifacts_host_powerfull

# If you want test another Qr version do: 
#rm -Rf ${MyQtBaseDir}/qt5/
git clone https://github.com/qt/qt5 qt5
cd qt5
# git switch 6.6.0
perl init-repository --module-subset=qtbase

export QT_DEBUG_PLUGINS=1
# export QT_QPA_EGLFS_FB=/dev/fb0

cd ${MyQtBaseDir}/build_host_powerfull
../qt5/configure -release -static -opensource -nomake examples -nomake tests -confirm-license -skip webengine -skip qtwayland -skip qtdoc -skip qtgraphicaleffects -skip qtqa -skip qttranslations -skip qtvirtualkeyboard -skip qtquicktimeline -skip qtquick3d -skip qt3d -skip qtrepotools -skip qttools -skip qtimageformats -skip qtnetworkauth -skip qtwebsockets -skip qtactiveqt -skip qtmacextras -skip winextras -skip qtmultimedia -skip qtgamepad -skip qtserialbus -skip qtspeech -skip qtsensors -skip qtlocation -no-ssl -prefix ../build_artifacts_host_powerfull -skip qtserialport -skip qtcharts -system-freetype -- -GNinja -DCMAKE_TOOLCHAIN_FILE=../toolchain_host_powerfull.cmake
cmake --build . --parallel && cmake --install .
