# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="beloglazov"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux extract history-substring-search lein svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Colorized ls
eval `dircolors -b`

export EDITOR="nano"

# Key Bindings

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line


# Aliases

alias ll='ls -lah'
alias l='ls -lh'
alias df='pydf'
alias du='du -hs'
alias mkdirs='mkdir -p'
alias n='nano'
alias e='emacsclient -c'
alias shutdown='sudo shutdown -Hh now'
alias reboot='sudo reboot'

# SVN aliales
alias svn='colorsvn'
alias svnc='svn ci -m'
alias svnd='svn diff $* | colordiff'
alias svnl='svn up -q; colorsvn log -l 10'
alias svns='svn st'

# Git aliases
alias gits='git s'
alias gitc='git ci'
alias gitca='git ca'
alias gitl='git l'
alias gitco='git co'
alias gitb='git b'
alias gitd='git d'

# Eclipse aliases
alias eclipse-clojure='nohup ~/soft/eclipse/eclipse-clojure-indigo/eclipse </dev/null &>/dev/null &'
alias eclipse-java='nohup ~/soft/eclipse/eclipse-java-indigo/eclipse </dev/null &>/dev/null &'
alias eclipse-jee='nohup ~/soft/eclipse/eclipse-jee-indigo/eclipse </dev/null &>/dev/null &'

# Set up auto extension stuff
#alias -s html=$BROWSER
#alias -s org=$BROWSER
#alias -s php=$BROWSER
#alias -s com=$BROWSER
#alias -s net=$BROWSER
#alias -s png=feh
#alias -s jpg=feh
#alias -s gif=feg
#alias -s sxw=soffice
#alias -s doc=soffice
#alias -s gz='tar -xzvf'
#alias -s bz2='tar -xjvf'
#alias -s java=$EDITOR
#alias -s txt=$EDITOR
#alias -s PKGBUILD=$EDITOR

# Other aliases
alias lsd='ls -lhd *(-/DN)'
alias lsh='ls -lhd .*'
alias f='find |grep'
alias c="clear"
alias dir='ls -1'
alias mem="free -m"


# Don't share history between terminals
unsetopt APPEND_HISTORY
