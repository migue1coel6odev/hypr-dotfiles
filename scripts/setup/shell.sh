sudo pacman -Sy --needed zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s /usr/bin/zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/Apps/powerlevel10k
git clone https://aur.archlinux.org/ttf-meslo-nerd-font-powerlevel10k.git ~/Apps/fonts
cd ~/Apps/fonts
makepkg -i
fc-cache
