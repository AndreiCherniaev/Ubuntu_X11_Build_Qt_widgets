"$MyBaseDir/Qt_themself/build_artifacts_host_powerfull/bin/qt-cmake" -S "$MyBaseDir/example/src" -B "$MyBaseDir/example/build-host" -DCMAKE_BUILD_TYPE=Release --fresh &&
cmake --build build-host/ --parallel
"$MyBaseDir/example/build-host/myexample"
