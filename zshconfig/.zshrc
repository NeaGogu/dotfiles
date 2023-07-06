# znap config
# Download Znap, if it's not there yet.
[[ -f ~/Git/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Git/zsh-snap

source ~/Git/zsh-snap/znap.zsh  # Start Znap

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=~/.jdks/corretto-17.0.7
export ANDROID_HOME=/home/gogu/Android/Sdk
export ANDROID_SDK_ROOT=/home/gogu/Android/Sdk
export GOPATH=~/go
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(
	git
#	zsh-autosuggestions
#	zsh-syntax-highlighting
	sudo
#	web-search
	copypath
	copyfile
	copybuffer
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH=$PATH:/usr/local/go/bin:~/Programs:$ANDROID_HOME/platform-tools:/usr/bin/android-platform-tools
PATH=$PATH:$GOPATH/bin:/home/gogu-pop/.local/share/JetBrains/Toolbox/scripts
export SSH_AUTH_SOCK=~/.1password/agent.sock

UNI() {
  cd /home/gogu/Desktop/UNI
}

function ocr() {
	flameshot gui --raw | tesseract stdin stdout | clipcopy
}

function studio() {
   /home/gogu-pop/.local/share/JetBrains/Toolbox/scripts/studio "$1" > /dev/null 2>&1 &
}

function idea() {
	/home/gogu-pop/.local/share/JetBrains/Toolbox/scripts/idea "$1" > /dev/null 2>&1 &
}

function ws() {
	/home/gogu-pop/.local/share/JetBrains/Toolbox/scripts/webstorm "$1" > /dev/null 2>&1 &
}

# `znap source` automatically downloads and starts your plugins.
#znap source marlonrichert/zsh-autocomplete
#znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

#-----------------------------------------
# Aliases
#-----------------------------------------

# Git
alias gm='git commit -m'
alias ga='git add'
alias gma='git commit -am'
alias gitlg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
alias grecent='f() { git reflog | grep checkout | cut -d " " -f 8 | uniq | head ${1} | cat -n };f'

# Other
alias zrc='vim ~/.zshrc'
alias saverc='source ~/.zshrc'
alias geof='cd ~/UNI-NOTES/Projects/Operating_systems/2INC0'
alias uni='xdg-open "obsidian://open?vault=Notes" > /dev/null 2>&1 &' 
alias work='xdg-open "obsidian://open?vault=Second-Brain" > /dev/null 2>&1 &' 

# fzf stuff
alias fp='cd $(find ~/Projects -type d ! -regex ".*/\.git.*" ! -regex ".*/\.gradle.*" ! -regex ".*/\.m2.*" ! -regex ".*/\.local.*" ! -regex ".*/\.config.*" ! -regex ".*/\..*" | fzf)'
alias fa='cd $(find ~/Almer -maxdepth 2 -type d  ! -regex ".*/\.git.*" ! -regex ".*/\.gradle.*" ! -regex ".*/\.m2.*" ! -regex ".*/\.local.*" ! -regex ".*/\.config.*" | fzf)'
alias ff='cd $(find . -type d ! -name "^.gradle/" ! -regex ".*/\.git.*" ! -regex ".*/\.gradle.*" ! -regex ".*/\.m2.*" ! -regex ".*/\.local.*" ! -regex ".*/\.config.*" | fzf)'

alias ocr='flameshot gui --raw | tesseract stdin stdout | xclip -selection clipboard'

eval $(thefuck --alias)

export NVM_DIR="$HOME/.config/nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

cowsay "yo"

# pnpm
export PNPM_HOME="/home/gogu-pop/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end