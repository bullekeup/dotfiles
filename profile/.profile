export EDITOR=nvim
export VISUAL=nvim

[ -d "${HOME}/.local/bin" ] && \
  export PATH="${PATH}:${HOME}/.local/bin"

export MANPATH="${MANPATH}:${HOME}/.local/share/man"

export NNN_PLUG="b:bookmarks;k:pskill;p:preview-tui;t:treeview;z:fzz;i:-mediainf;f:fzopen;d:dragdrop;u:dups;h:hexview;a:suedit;r:renamer"
export NNN_BOOKMARKS_DIR="${XDG_CACHE_DIR:-$HOME/.cache}/nnn/bookmarks"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_TRASH=1
export NNN_OPTS="adHEon"

export SPACEVIMDIR="${HOME}/.config/spacevim"

export PYENV_ROOT="${HOME}/.local/share/pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
[ -n "$(command -v pyenv)" ] && {
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
}

export RBENV_ROOT="${HOME}/.local/share/rbenv"
[ -n "$(command -v rbenv)" ] && {
  eval "$(rbenv init -)"
  rbenv shell 2.7.2
}

[ -n "$(command -v pipx)" ] && [ -n $(expr "${SHELL##*/}" : "\(bash\|zsh\)") ] && \
  eval "$(register-python-argcomplete pipx)"

PERL_CPANM_HOME="${HOME}/.local/share/cpanm"; export PERL_CPANM_HOME;
PATH="${HOME}/.local/share/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="${HOME}/.local/share/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="${HOME}/.local/share/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"${HOME}/.local/share/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=${HOME}/.local/share/perl5"; export PERL_MM_OPT

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.config/nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -n "$(expr "${SHELL##*/}" : "\(bash\|zsh\)" )" ] && \
  nvm use --lts >/dev/null

export GOENV="${HOME}/.config/go/env"
export PATH="${PATH}:${HOME}/.local/share/go/bin"
