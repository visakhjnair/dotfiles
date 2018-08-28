# Path to your oh-my-zsh installation.
export ZSH="/Users/austinluong/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Tmux options
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="true"
ZSH_TMUX_AUTOQUIT="true"
ZSH_TMUX_FIXTERM="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  dirhistory
  last-working-dir
  tmux
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# MY ADDITIONS

# Fix backgound highlighting issues
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

eval "$(pyenv init -)"

# Set environement variables
# export JAVA_HOME=$(/usr/libexec/java_home)
export VISUAL=vim
export EDITOR="$VISUAL"

# Activate z
source "$(brew --prefix)/etc/profile.d/z.sh"

# Path
export PATH="$PATH:~/arcanist/arcanist/bin/"

# Aliases
alias sherlock='ssh -fN austinluong@sherlock'
alias attactivate='source ~/workspace/all-the-things/deployable/monolith/src/.venv/bin/activate'
alias arc='bash arc'
alias py='ptipython'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Powerlevel9k Settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv rbenv dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_CONTEXT_TEMPLATE=''
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='white'

# Search history for typed text with up and down arrow
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# PySpark repl
export PYSPARK_DRIVER_PYTHON=ipython
