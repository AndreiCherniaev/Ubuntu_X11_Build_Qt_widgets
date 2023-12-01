cd /home/a/BPEM-00_SOFTWARE/Tcp/fortuneclient/
/home/a/mystorage/QtFromGit/Qt_themself/build_artifacts_host_powerfull/bin/qt-cmake -S src/ -B build-host/ -DCMAKE_BUILD_TYPE=Release --fresh &&
cmake --build build-host/ --parallel
build-host/fortuneclient
