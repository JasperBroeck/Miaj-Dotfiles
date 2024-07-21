#!/bin/bash 

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
