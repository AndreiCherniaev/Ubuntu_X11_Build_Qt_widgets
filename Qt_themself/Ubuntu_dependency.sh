# host: Ubuntu 22 with X11 (not Wayland)
# Looks like There are more than enough packages
sudo apt install libxcb-cursor0
sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev
sudo apt-get isntall libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxkbcommon-x11-0
sudo apt install libxcb-xinerama0 
