sudo pacman -S docker docker-compose
sudo systemctl enable docker.service
sudo systemctl start docker.service
git clone https://aur.archlinux.org/docker-desktop.git ~/Apps/docker-desktop
cd ~/Apps/docker-desktop
makepkg --syncdeps -i
