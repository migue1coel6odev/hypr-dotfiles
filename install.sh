# Initial commands
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy

# Essentials
sudo pacman -S stow
sudo pacman -S pavucontrol

# Editor
curl -f https://zed.dev/install.sh | sh
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# Work directory
cd ~
mkdir Apps
mkdir Dev

# Create user directories
sudo pacman -Sy --needed xdg-user-dirs
xdg-user-dirs-update

# Shell setup
sudo pacman -Sy --needed zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s /usr/bin/zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/Apps/powerlevel10k
git clone https://aur.archlinux.org/ttf-meslo-nerd-font-powerlevel10k.git ~/Apps/fonts
cd ~/Apps/fonts
makepkg -i
fc-cache

cd ~
