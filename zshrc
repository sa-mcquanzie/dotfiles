# ~/.zshrc
# Config file for Z Shell

# SETTINGS

HYPHEN_INSENSITIVE="true"
DISABLE_MAGIC_FUNCTIONS=true
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
ZSH_COLORIZE_STYLE="colorful"
ZSH_DISABLE_COMPFIX="true"

# THEME

ZSH_THEME="spaceship"

# PROMPT

SPACESHIP_PROMPT_ORDER=(
	time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  pyenv         # Pyenv section
  exec_time     # Execution time
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# PLUGINS

plugins=(rails git ruby battery bgnotify colored-man-pages colorize common-aliases
copybuffer copydir copyfile dircycle dirhistory emoji fastfile git heroku nmap npm pip
safe-paste screen sudo tmuxinator web-search zsh-interactive-cd zsh_reload)

# ALIASES

alias cl="clear"
alias emacs="emacs -nw"
alias icat="kitty +kitten icat --align left"
alias lah="ls -lah"
alias lll="ls -lahHrBvb --group-directories-first --color=always | tac | less"
alias cat="ccat"
alias pgsv="/home/linuxbrew/.linuxbrew/opt/postgresql/bin/postgres -D /home/linuxbrew/.linuxbrew/var/postgres &"

# EXPORTS

export LANG=en_US.UTF-8
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export GHP="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"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"
export ZSH=/home/bea/.oh-my-zsh
export UPDATE_ZSH_DAYS=1

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='emacs'
fi

export PATH="$PATH:$HOME/bin:/usr/local/bin:$HOME/.linuxbrew/bin:$PYENV_ROOT/bin:$HOME/.rvm/bin"

# SCRIPTS

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init -)"

source $ZSH/oh-my-zsh.sh
