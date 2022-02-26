#!/bin/sh

# Update
sudo pacman -Syu

# System
sudo pacman -S git base-devel ntfs-3g core/linux-api-headers python-pip gcc evtest --noconfirm

# Tools
sudo pacman -S gparted spectacle libreoffice-fresh unzip code docker-compose docker gvim nodejs --noconfirm

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Aparience
sudo pacman -S zsh-completions zsh latte-dock neofetch ttf-fira-code noto-fonts-emoji  --noconfirm

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Git source
set -- google-chrome obinskit balena-etcher snapd ulauncher
while [ $# -gt 0 ]
do
        git clone https://aur.archlinux.org/$1
        cd $1
        makepkg -is --noconfirm
        cd ..
        sudo rm -R $1
        shift;
done

mkdir -p ~/.config/ulauncher/user-themes
git clone https://github.com/levonhart/materia-dark-ulauncher \
  ~/.config/ulauncher/user-themes/materia-dark-ulauncher

## Install slack temp
git clone https://aur.archlinux.org/slack-desktop
cd slack-desktop
git checkout be95059895d8910b435e75defd58d909dd84ac17
makepkg -is --noconfirm
cd .. 
sudo rm -R slack-desktop


