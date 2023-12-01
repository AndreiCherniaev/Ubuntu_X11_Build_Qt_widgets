# host: Ubuntu 22 with X11 (not Wayland)
# Looks like There are more than enough packages
sudo apt install python3-pip -y
pip install cmake ninja

# Unfochently pip install to some path which is not in PATH. So Ubuntu can't find cmake. Fix it
export myName=$USER && sudo -E bash -c 'cat <<EOF > /etc/profile.d/local_bin_to_PATH.sh
export PATH="$PATH:/home/$myName/.local/bin"
EOF'
sudo chmod a+x /etc/profile.d/local_bin_to_PATH.sh
source /etc/profile.d/local_bin_to_PATH.sh
# Reboot to set new settings!

sudo apt install libxcb-cursor0
sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev
sudo apt-get isntall libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxkbcommon-x11-0
sudo apt install libxcb-xinerama0
sudo apt-get install libmd4c-html0
