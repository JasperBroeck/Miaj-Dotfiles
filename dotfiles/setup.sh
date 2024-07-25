#!/bin/bash 
cd
mkdir Downloads

# Install programs using pacman
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm hyprpaper flatpak git curl wget btop jdk-openjdk nautilus kitty bluez bluez-utils blueman starship fastfetch nm-connection-editor networkmanager network-manager-applet netctl dialog gnome-text-editor grim slurp waybar wofi hyprland
sudo pacman -Rns dolphin
# Install AUR helper
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
source /etc/profile
sudo pacman -Syu --noconfirm

# Install programs using paru
paru -S minecraft-launcher
paru -S nwg-look-bin
paru -S balena-etcher
paru -S woeusb

# Install flatpak apps
flatpak install flathub com.microsoft.Edge -y
flatpak install flathub md.obsidian.Obsidian -y
flatpak install flathub io.gitlab.idevecore.Pomodoro -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub io.github.ec_.Quake3e.OpenArena -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.vscodium.codium -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.rtosta.zapzap -y
flatpak install flathub org.localsend.localsend_app -y

# Install theme, icons and cursors
cd ~/Downloads
git clone https://github.com/vinceliuice/Graphite-gtk-theme
git clone https://github.com/vinceliuice/Fluent-icon-theme/
paru -S bibata-cursor-theme-bin

unzip Fluent-icon-theme-master.zip
unzip Graphite-gtk-theme-main.zip
unzip Miaj-Dotfiles-main.zip

cd Fluent-icon-theme
./install.sh
cd ..

cd Graphite-gtk-theme
./install.sh
cd ..

# System Installation
cd Miaj-Dotfiles
cd dotfiles
cp -r wallpaper/ ~/wallpaper/
cp .bashrc ~/.bashrc
cd .config/
rm -r ~/.config/hypr/
cp -r hypr/ ~/.config/hypr/
rm -r ~/.config/fastfetch/
cp -r fastfetch/ ~/.config/fastfetch/
rm -r ~/.config/kitty/
cp -r kitty/ ~/.config/kitty/
rm -r ~/.config/waybar/
cp -r waybar/ ~/.config/waybar/
rm -r ~/.config/wofi/
cp -r wofi/ ~/.config/wofi/
rm ~/.config/starship.toml
cp starship.toml ~/.config/starship.toml

cd

sudo reboot
