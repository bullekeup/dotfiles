# dotfiles - My (Arch)linux dotfiles

dotfiles for following programs - tools

Once cloned, can be auto-installed by running the install.sh shell script.

## alacritty

Configured to use font : MesloLGS NF 10
Start a new tmux session when launched

## tmux

Config based on https://gist.github.com/spicycode/1229612, with various replacements
and improvements

Use C-a instead of C-b
Changed pane / window switching and other bindings (see tmux/tmux.conf)
Added support for copy pasting from / to tmux / system clipboard using xclip
- 'C-v' paste clipboard into buffer and paste the buffer in current pane
- vim-like keys in copy mode : 'v' start selection, 'y' copies
- 'c' key in copy mode copies to system clipboard
- mouse selection in copy mode copied to X primary selection (aka middle click clipboard)

## profile

provides following files for basic setup :

.bashrc: unused, here as a basic
.zshrc: configured with oh-my-zsh (must be in ~/.config/oh-my-zsh) and powerlevel10k (see .p10k.zsh)
.profile: defines generic env var for both shell and X
.xprofile: defines X specific env var and programs to execute at startup

## dunst

dunst notification server configuration, with a theme made to go with [my other configs](https://github.com/bullekeup/xorg-dwm-tools)

