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
install -m755 ./scripts/scratchpad-launcher ~/.local/bin/
install -m755 ./scripts/nnn-add-dir-bookmark ~/.local/bin/
install -m755 ./scripts/devwksp-launcher ~/.local/bin/

install -d ~/.cache/go-build
install -d ~/.cache/go-mod
install -d ~/.cache/go-tmp
install -d ~/.local/share/go/bin
install -d ~/.config/go
install -m644 ./go/env ~/.config/go/
sed -i -e "s:{HOME}:${HOME}:g" ~/.config/go/env

install -d ~/.local/share/entry-selector
find ./scripts/entry-selector -type f -print0 | xargs -0 -n1 -I % install -m644 % ~/.local/share/entry-selector/
chmod +x ~/.local/share/entry-selector/entry-selector
ln -f -s ~/.local/share/entry-selector/entry-selector ~/.local/bin/entry-selector

cd -
