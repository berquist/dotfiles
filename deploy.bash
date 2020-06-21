#!/usr/bin/env bash

set -euo pipefail

hname=$(hostname -s)

mkdir -p ~/repositories

# Install packages from package manager

# Link config files
ln -fsv ~/dotfiles/.aspell.en.prepl ~/.aspell.en.prepl
ln -fsv ~/dotfiles/.aspell.en.pws ~/.aspell.en.pws
ln -fsv ~/dotfiles/.condarc ~/.condarc
ln -fsv ~/dotfiles/.emacs.d ~/.emacs.d
ln -fsv ~/dotfiles/.gitconfig ~/.gitconfig
ln -fsv ~/dotfiles/.mdlrc ~/.mdlrc
ln -fsv ~/dotfiles/.sbclrc ~/.sbclrc
ln -fsv ~/dotfiles/.tmux ~/.tmux
ln -fsv ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -fsv ~/dotfiles/.zshenv ~/.zshenv
ln -fsv ~/dotfiles/.zprofile ~/.zprofile
ln -fsv ~/dotfiles/.zshrc.ohmyzsh ~/.zshrc

mkdir -p ~/.ssh
chmod 600 ~/.ssh
chmod 600 ~/dotfiles/dotfiles-private/ssh_config
ln -fsv ~/dotfiles/dotfiles-private/ssh_config ~/.ssh/config

mkdir -p ~/.subversion
ln -fsv ~/dotfiles/dotfiles-private/.subversion/config ~/.subversion/config
ln -fsv ~/dotfiles/dotfiles-private/.subversion/servers ~/.subversion/servers

if [[ $hname == "osmium" ]]; then
    ln -fsv ~/dotfiles/.compton.conf.arch ~/.compton.conf
    ln -fsv ~/dotfiles/.vmdrc.arch ~/.vmdrc
    ln -fsv ~/dotfiles/.xinitrc.arch ~/.xinitrc
fi
