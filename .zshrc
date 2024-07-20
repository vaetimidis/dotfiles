# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mgutz"

# Texteditor and zshconfig aliases
alias zshconfig="nano ~/.zshrc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Path for custom binaries, scripts, etc.

# Set exa instead of ls
#alias ls="exa"
#alias l="exa -alh"
# set ccat instead of cat
#alias cat="ccat"

# Have no chaining duplicates (meaning only the latest command if same command executed multiple times) in hist
export HISTCONTROL=ignoreboth:erasedups


# Announce 256 bit color support
export TERM=xterm-256color

# Less gdb output
#alias gdb='gdb -q'

# Update pip packages
#alias pipupgrade="pip list --format=legacy --outdated | cut -d ' ' -f1 | xargs -n1 pip install -U"
#alias pipupgrade_sudo="pip list --format=legacy --outdated | cut -d ' ' -f1 | xargs -n1 sudo pip install -U"


#
# Create a new directory and cd into it
# Similar to "mkdir xxx && cd $_"
#
mkcd() {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}

fpath=(/usr/local/share/zsh-completions $fpath)
fpath+=~/.zfunc
compinit

#nvm 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# pnpm
export PNPM_HOME="/home/null/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
