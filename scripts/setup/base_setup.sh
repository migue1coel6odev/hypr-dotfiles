sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy
sudo timedatectl set-local-rtc 1
sudo pacman -Sy --needed xdg-user-dirs
xdg-user-dirs-update
