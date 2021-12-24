#
# ~/.bashrc
#

#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# Make nvim the default editor

export EDITOR='nvim'
export VISUAL='nvim'

PS1='[\e[3m\e[31m\u\e[0m@\e[0m\e[3m\e[31m\h \e[0m\W]\$ '

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

# fetch
pfetch

#list
alias ls='ls -a'
alias ll='ls -la'

#shutdown or reboot
alias ssn="shutdown now"
alias sr="reboot"

#anime-cli
alias anime="sh ~/workspace/src/github.com/Adrephos/ani-cli/ani-cli"
