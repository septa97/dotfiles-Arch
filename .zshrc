# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/septa97/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

# For dotfiles management
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Download youtube videos as mp3 format
alias youtube-dl-audio='/usr/bin/youtube-dl --extract-audio --audio-format mp3'

# Run osu!
alias osu!="/usr/bin/wine $HOME/win32/drive_c/users/septa97/Local\ Settings/Application\ Data/osu\!/osu\!.exe"

# Fix npm permissions
npm-fix-permissions() {
    if [[ $(npm config get prefix) == '/usr/local' ]]
    then
        alias npm-fix-permissions="sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}"
    else
        echo "NPM global prefix is not set to '/usr/local'. Aborting operation."
    fi
}

# egrep
alias egrep='egrep --color=always'

# mv
alias mv='timeout 8 mv -iv'

# Ruby configuration
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# added by travis gem
[ -f /home/septa97/.travis/travis.sh ] && source /home/septa97/.travis/travis.sh

# Tensorflow
export PATH=/usr/local/cuda${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Use vim key binding
bindkey -v

# Wine (32-bit)
export WINEPREFIX="$HOME/win32"
export WINEARCH=win32

# Java
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export PATH=$JAVA_HOME/bin:$PATH

# Android SDK
export ANDROID_HOME="$HOME/Android/Sdk"

# Import colorscheme from 'wal'
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(wal -r &)
