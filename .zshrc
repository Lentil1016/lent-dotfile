# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
if [ -d /home/lentild/.oh-my-zsh ]; then
	export ZSH=/home/lentild/.oh-my-zsh
else 
	if [ -d /home/lentil/.oh-my-zsh/ ];then
		export ZSH=/home/lentil/.oh-my-zsh
	else
		if [ -d /home/sunyk/.oh-my-zsh/ ];then
			export ZSH=/home/sunyk/.oh-my-zsh
		else
			if [ -d /root/.oh-my-zsh/ ];then
				export ZSH=/root/.oh-my-zsh
			else
				echo "$0 Can't find .oh-my-zsh dir"
			fi

		fi
	fi
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

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

export CLICOLOR=1
export LSCOLORS=dxFxCxDxBxegedabagacad

local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

root_color="009"
user_color="214"
host_color="214"
path_color="012"
git_color="214"

post_fix="%{$reset_color$FG[$path_color]%} %{$reset_color%}";

if [ `id -u` -eq 0 ]; then
	PROMPT="
	%{$FG[$user_color]%}╭─%{$reset_color$FG[$user_color]%}%{$FG[000]$BG[$host_color]%} %n  %m %{$FG[$path_color]$BG[$host_color]%}%{$FG[000]$BG[$path_color]%} %~ ${post_fix}%{$reset_color%}${git_branch}
%{$FG[$user_color]%}╰\$ %{$reset_color%}"
else
	PROMPT="
	%{$FG[$root_color]%}╭─%{$reset_color$FG[$root_color]%}%{$FG[000]$BG[$root_color]%} %n %{$FG[$host_color]%}%{$BG[$host_color]$FG[000]%} %m %{$FG[$path_color]$BG[$host_color]%}%{$FG[000]$BG[$path_color]%} %~ ${post_fix}%{$reset_color%}${git_branch}
%{$FG[$root_color]%}╰\$ %{$reset_color%}"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[214]%}%{$FX[bold]$FG[000]$BG[214]%}  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color$FG[214]%} %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$FG[214]%}("
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$FG[214]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$FG[002]%}

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$FG[001]%}

alias findstr="find . -type f|grep -v tags|xargs grep --color=auto -n"
alias tmuxnew="tmux new -s"
alias tmuxattach="tmux attach -t"
alias docker="sudo docker"
alias gdb1="voltron view register"
alias gdb2="voltron view stack"
alias gdb3="voltron view disasm"
alias gdb4="voltron view backtrace"
alias findps="ps aux|grep "
alias sl="ls"
alias ls="/bin/ls --color=auto"
export PATH="$PATH:$HOME/.local/bin"
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
export TERM="xterm-256color"

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
