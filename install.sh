cd ..
mkdir packages
cd packages
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
yay -S kitty kvantum gsettings-desktop-schemas swaybg wofi nano sddm-git steam discord thunderbird dolphin spotify firefox htop neofetch gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
sudo make install
cd ../..
cp -r calicodots/hyprland.conf calicodots/keybindings.conf ~/.config/hypr/
cp -r calicodots/Kvantum ~/.config/
systemctl enable --now sddm
reboot
