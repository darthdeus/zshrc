ZSH=$HOME/.zsh

# history config
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# disable the annoying beep
unsetopt beep

# emacs style keybindings
bindkey -e

# Load all libs under
for config_file ($ZSH/lib/*.zsh) source $config_file

# completion settings
# zstyle :compinstall filename '/Users/darth/.zshrc'
autoload -Uz compinit
compinit

# color theme
source $ZSH/themes/darth.zsh-theme


PATH="$HOME/Qt/5.4/clang_64/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR="vim"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export GHC_DOT_APP="/Applications/ghc-7.8.3.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

source $ZSH/custom/aliases.zsh
source $ZSH/custom/git_aliases.zsh
