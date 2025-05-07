nmcli device wifi connect "Accio Internet" --ask

sudo pacman -S base-devel git github-cli neofetch neovim htop nvtop
sudo pacman -S ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite libxrender libxcursor pixman wayland-protocols cairo pango libxkbcommon
sudo pacman -S xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus xcb-util-errors glaze aquamarine re2

sudo pacman -S --needed xdg-user-dirs pavucontrol playerctl curl tree man man-db less firefox code
xdg-user-dirs-update
sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-dejavu ttf-liberation ttf-fira-code ttf-jetbrains-mono ttf-font-awesome

sudo pacman -S hyprpaper waybar wofi kitty dolphin

mkdir Apps
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S hyprlang-git hyprcursor-git hyprwayland-scanner-git hyprutils-git hyprgraphics-git hyprland-qtutils

git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install

