
# find Oh-my-zsh path
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

# decide plugins to be loaded.
plugins=(git svn docker kubectl)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# load local path info
if [ -f $HOME/.pathrc ]; then
	source $HOME/.pathrc
fi

# some alias and environment configurations
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
alias to="source ~/script/to"
alias kube="kubectl"
alias kubeget="kubectl get -o wide"
alias kubed="kubectl describe"
alias kubeall="kubectl get -o wide --all-namespace all"
alias ddie="docker ps -a|grep Exited|awk '{print \$1}'|xargs -i docker rm {}"
alias dnone="docker images|grep none|awk '{print \$3}'|xargs -i docker rmi {}"
alias dimg="docker images|awk '{print \$3}'|xargs -i docker rmi {}"
alias tree="tree -C"
alias treee="tree -Cfi"
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
export TERM="xterm-256color"
export PATH="$PATH:$HOME/script"
export GOPATH="$HOME/.go"

#===============================
# Powerline-style theme
# Author: lentil1016@gmail.com
#===============================
export CLICOLOR=1
export LSCOLORS=dxFxCxDxBxegedabagacad

local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)$(svn_prompt_info)'

user_color="011"
root_color="203"
host_color="203"
path_color="012"
git_color="203"

post_fix="%{$reset_color$FG[$path_color]%} %{$reset_color%}";

if [ `id -u` -eq 0 ]; then
	PROMPT="
%{$FG[$root_color]%}╭─%{$reset_color$FG[$root_color]%}%{$FG[000]$BG[$host_color]%} %n  %m %{$FG[$path_color]$BG[$host_color]%}%{$FG[000]$BG[$path_color]%} %~ ${post_fix}%{$reset_color%}${git_branch}
%{$FG[$root_color]%}╰\$ %{$reset_color%}"
else
	PROMPT="
%{$FG[$user_color]%}╭─%{$reset_color$FG[$user_color]%}%{$FG[000]$BG[$user_color]%} %n %{$FG[$host_color]%}%{$BG[$host_color]$FG[000]%} %m %{$FG[$path_color]$BG[$host_color]%}%{$FG[000]$BG[$path_color]%} %~ ${post_fix}%{$reset_color%}${git_branch}
%{$FG[$user_color]%}╰\$ %{$reset_color%}"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[$git_color]%}%{$FX[bold]$FG[000]$BG[$git_color]%}  "
ZSH_THEME_GIT_PROMPT_SUFFIX=""

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$reset_color$FG[$git_color]%}%{$reset_color$FG[009]%} ✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$reset_color$FG[$git_color]%}%{$reset_color$FG[010]%} ✔ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$FG[$git_color]%}("
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$FG[$git_color]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$FG[010]%}

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$FG[009]%}

ZSH_THEME_SVN_PROMPT_PREFIX="%{$reset_color$FG[$git_color]%}%{$FG[000]$BG[$git_color]%} svn:"
ZSH_THEME_SVN_PROMPT_SUFFIX=" %{$reset_color$FG[$git_color]%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$FG[009]%} ✘%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$FG[010]%} ✔%{$reset_color%}"
