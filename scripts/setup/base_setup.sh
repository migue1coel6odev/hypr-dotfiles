sudo pacman-key --init
sudo pacman-key --populate
sudo timedatectl set-local-rtc 1
sudo pacman -Sy
sudo pacman -S --needed xdg-user-dirs ttf-liberation ttf-fira-code
xdg-user-dirs-update
git clone https://aur.archlinux.org/mkinitcpio-numlock.git ~/Apps/numlock
cd numlock
makepkg -i