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

if [[ $hname == "osmium" ]]; then
    ln -fsv ~/dotfiles/.compton.conf.arch ~/.compton.conf
    ln -fsv ~/dotfiles/.vmdrc.arch ~/.vmdrc
    ln -fsv ~/dotfiles/.xinitrc.arch ~/.xinitrc
fi

# Install chemacs
chemacs_target_dir=~/repositories/chemacs
if [[ -d $chemacs_target_dir ]]; then
    (
        cd $chemacs_target_dir
        git pull
    )
else
    git clone https://github.com/plexus/chemacs.git $chemacs_target_dir
fi
ln -fsv $chemacs_target_dir/.emacs ~/.emacs

# Install oh-my-zsh
ohmyzsh_target_dir=~/repositories/ohmyzsh
if [[ -d $ohmyzsh_target_dir ]]; then
    (
        cd $ohmyzsh_target_dir
        git pull
    )
else
    git clone https://github.com/ohmyzsh/ohmyzsh.git $ohmyzsh_target_dir
fi
ln -fsv $ohmyzsh_target_dir ~/.oh-my-zsh

# Install zinit
mkdir -p ~/.zinit
zinit_target_dir=~/.zinit/bin
if [[ -d $zinit_target_dir ]]; then
    (
        cd $zinit_target_dir
        git pull
    )
else
    git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi

# Install pyenv
pyenv_target_dir=~/.pyenv
if [[ -d $pyenv_target_dir ]]; then
    (
        cd $pyenv_target_dir
        git pull
    )
else    
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

# Install Rust

# Install Nim
