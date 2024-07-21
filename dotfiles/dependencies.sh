#!/bin/bash 
cd
mkdir Downloads

# Install programs using pacman
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm flatpak git curl wget btop nautilus kitty bluez bluez-utils blueman starship fastfetch nm-connection-editor network-manager-applet netctl dialog gnome-text-editor grim slurp waybar wofi hyprland

# Install AUR helper
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
source /etc/profile
sudo pacman -Syu --noconfirm

# Install nwg-look-bin
paru -S nwg-look-bin

# Install flatpak apps
flatpak install flathub com.microsoft.Edge -y
flatpak install flathub md.obsidian.Obsidian -y
flatpak install flathub io.gitlab.idevecore.Pomodoro -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub com.mojang.Minecraft -y
flatpak install flathub io.github.ec_.Quake3e.OpenArena -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.vscodium.codium -y

# Install theme, icons and cursors
cd ~/Downloads
git clone https://github.com/vinceliuice/Graphite-gtk-theme
git clone https://github.com/vinceliuice/Fluent-icon-theme/
paru -S bibata-cursor-theme-bin

unzip Fluent-icon-theme-master.zip
unzip Graphite-gtk-theme-main.zip

cd Fluent-icon-theme-master
./install.sh

cd ..

cd Graphite-gtk-theme-main
./install.sh
