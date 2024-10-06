# Initial commands
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy
sudo timedatectl set-local-rtc 1

# Essentials
sudo pacman -S stow
sudo pacman -S pavucontrol playerctl

# Hyprland
sudo pacman -S hyprpaper hyprlock waybar

# Work directory
cd ~
sudo pacman -Sy --needed xdg-user-dirs
xdg-user-dirs-update
mkdir Apps
mkdir Dev

# Chrome
cd ~/Apps
git clone https://aur.archlinux.org/google-chrome.git ./google-chrome
cd google-chrome
makepkg -i

# Editor Zed
curl -f https://zed.dev/install.sh | sh
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

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

# Docker
printf "Install docker? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping docker..."
else
    echo  "Installing docker..."
    sudo pacman -S docker docker-compose
    sudo systemctl enable docker.service
    sudo systemctl start docker.service
    git clone https://aur.archlinux.org/docker-desktop.git ~/Apps/docker-desktop
    cd ~/Apps/docker-desktop
    makepkg --syncdeps -i
fi

# Node
printf "Install Node (nvm)? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping node..."
else
    echo  "Installing node..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
fi

# Bun
printf "Install bun ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping bun..."
else
    echo  "Installing bun..."
    sudo pacman -S --needed unzip
    curl -fsSL https://bun.sh/install | bash
fi

# Rust
printf "Install rust ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping rust..."
else
    echo  "Installing rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# Steam
printf "Install steam ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping steam..."
else
    echo  "Installing steam..."
    sudo pacman -S steam
fi

# Discord
printf "Install discord ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping discord..."
else
    echo  "Installing discord..."
    sudo pacman -S discord
fi

# Teamspeak
printf "Install teamspeak ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping teamspeak..."
else
    echo  "Installing teamspeak..."
    sudo pacman -S teamspeak3
fi

# Freecad
printf "Install freecad ? (Y/n)"
read answer

if [ "$answer" != "${answer#[Nn]}" ] ; then
    echo  "Skipping freecad..."
else
    echo  "Installing freecad..."
    sudo pacman -S freecad
fi
