# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux zsh-autosuggestions)

# Tmux plugin
ZSH_TMUX_AUTOSTART=true

# User configuratio

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='v'
else
  export EDITOR='v'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit;
prompt pure

# Zoxide
eval "$(zoxide init zsh)"


export BROWSER=firefox
export XDG_UTILS_DEBUG_LEVEL=1

export PATH=$PATH:/opt/brave-bin/:/home/zep/.local/bin

export JAVA_HOME=/usr/lib/jvm/jdk-23.0.1
export PATH=$JAVA_HOME/bin:$PATH

#fuzzyfinder
bindkey -s '^F' 'cd $(find ~ -type d | fzf)\n'

#aws vpn client
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

# tab autocomplete
bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete

# history search
#bindkey '^i' history-search-backward
bindkey '^u' history-search-forward


# Custom commands
alias deploy='deactivate; source /home/zep/work/secops-internal-tools/deployments/venv/bin/activate; python3 /home/zep/work/secops-internal-tools/deployments/deployments.py; deactivate'
alias wh='nmcli device wifi connect "Mojo Dojo Casa House_5G" password RickSanchezC-137'
alias whb='nmcli device wifi connect "Mojo Dojo Casa House" password RickSanchezC-137'
alias whe='nmcli device wifi connect "EXT Mojo Dojo Casa House" password RickSanchezC-137'
alias wl='nmcli device wifi list'
alias nt='/home/zep/work/secops-internal-tools/scripts/new_tag.sh'
alias bpn='echo "ITS VPN WITH V YOU IDIOT" && vpn'
alias updatescreens='bash ~/.screenlayout/monitor_setup.sh'
alias us='updatescreens'
alias mouse='echo '0000:05:00.4' | sudo tee /sys/bus/pci/drivers/xhci_hcd/unbind sleep 2 echo '0000:05:00.4' | sudo tee /sys/bus/pci/drivers/xhci_hcd/bind'
alias fe='feh --no-fehbg --bg-scale ~/Images/cyberpunk-graffiti.png --bg-scale ~/Images/cyberpunk-graffiti.png --bg-scale ~/Images/cyberpunk-vertical.jpg'
alias mata='sudo pkill'



source $ZSH/oh-my-zsh.sh
