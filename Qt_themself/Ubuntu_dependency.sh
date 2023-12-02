# host: Ubuntu 22 with X11 (not Wayland)
# Looks like There are more than enough packages
sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev -y
# Thanks https://doc.qt.io/qt-6/linux-requirements.html
sudo apt install libfontconfig1-dev libfreetype6-dev libx11-dev libx11-xcb-dev libxext-dev libxfixes-dev libxi-dev libxrender-dev libxcb1-dev libxcb-cursor-dev libxcb-glx0-dev libxcb-keysyms1-dev libxcb-image0-dev libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev libxcb-util-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev -y

sudo apt-get install libmd4c-html0 -y
# Install cmake, nonja via 
sudo apt install python3-pip -y
pip install cmake ninja

# Unfochently pip install to some path which is not in PATH. So Ubuntu can't find cmake. Fix it
export myName=$USER && sudo -E bash -c 'cat <<EOF > /etc/profile.d/local_bin_to_PATH.sh
export PATH="$PATH:/home/$myName/.local/bin"
EOF'
sudo chmod a+x /etc/profile.d/local_bin_to_PATH.sh
# To make "source" works we should run this script with dot 
# . "$MyBaseDir/Qt_themself/Ubuntu_dependency.sh"
source /etc/profile.d/local_bin_to_PATH.sh

# sudo apt install libxcb-cursor0 -y #usually no need
# sudo apt-get install libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxkbcommon-x11-0 -y #usually no need
# sudo apt install libxcb-xinerama0 -y #usually no need
# sudo apt install libfreetype* #usually no need
