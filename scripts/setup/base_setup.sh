sudo pacman-key --init
sudo pacman-key --populate
sudo timedatectl set-local-rtc 1
sudo pacman -Sy
sudo pacman -S --needed xdg-user-dirs ttf-liberation vi
xdg-user-dirs-update
