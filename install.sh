#!/bin/sh

tmp="$(dirname $0)" && [ "${tmp%%/*}" = "." ] && SCRIPT_PATH="$(pwd)${tmp#.}" || SCRIPT_PATH="${tmp}";
RUNPATH="$(pwd)";
cd ${SCRIPT_PATH};

install -d ~/.config/alacritty
install -m644 ./alacritty/alacritty.yml ~/.config/alacritty/

install -d ~/.config/dunst
install -m644 ./dunst/* ~/.config/dunst/

install -m644 ./profile/.* ~/

install -m644 ./tmux/tmux.conf ~/.tmux.conf

install -d ~/.config/multilock
install -m644 ./multilock/config ~/.config/multilock/

install -d ~/.local/bin
install -m755 ./scripts/mutt-launcher ~/.local/bin/

