#!/bin/sh

# Update
sudo pacman -Syu

# System

sudo pacman -S git base-devel ntfs-3g core/linux-api-headers python-pip gcc evtest

# Tools

sudo pacman -S gparted spectacle libreoffice-fresh unzip code docker-compose docker

# Aparience

sudo pacman -S zsh-completions zsh latte-dock neofetch ttf-fira-code

# Git

set -- slack-desktop google-chrome obinskit balena-etcher snapd
while [ $# -gt 0 ]
do
        git clone https://aur.archlinux.org/$1
        cd $1
        makepkg -is
        cd ..
        rm -R $1
        shift;
done



