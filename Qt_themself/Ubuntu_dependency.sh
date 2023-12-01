# host: Ubuntu 22 with X11 (not Wayland)
# Looks like There are more than enough packages
sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev -y
sudo apt-get install libmd4c-html0 -y
sudo apt install python3-pip -y
pip install cmake ninja

# Unfochently pip install to some path which is not in PATH. So Ubuntu can't find cmake. Fix it
export myName=$USER && sudo -E bash -c 'cat <<EOF > /etc/profile.d/local_bin_to_PATH.sh
export PATH="$PATH:/home/$myName/.local/bin"
EOF'
sudo chmod a+x /etc/profile.d/local_bin_to_PATH.sh
source /etc/profile.d/local_bin_to_PATH.sh

# sudo apt install libxcb-cursor0 -y #usually no need
# sudo apt-get install libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxkbcommon-x11-0 -y #usually no need
# sudo apt install libxcb-xinerama0 -y #usually no need
# sudo apt install libfreetypes* -y #usually no need
