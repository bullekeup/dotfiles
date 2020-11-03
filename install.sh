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

