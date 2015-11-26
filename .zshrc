# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="thorn"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python django ssh-agent)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

TZ="Europe/Istanbul"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000000
SAVEHIST=1000000
HOSTNAME="`hostname`"
PAGER='less'
EDITOR='vim'
set -o vi

# # --------------------------------------------------------------------
# # aliases
# # --------------------------------------------------------------------

alias slrn="slrn -n"
alias man='LC_ALL=C LANG=C man'
alias f=finger
alias ll='ls -lh'
#alias ls='ls --color=auto '
alias lt='ls --sort=time -1 | head '
alias size_all='ls | xargs -I file du -sh file'

alias free="free -h"
alias egrep='egrep --color=auto -n '
alias grep='grep --color=auto '
alias pssp='ps -eo uname,%cpu,%mem,fname,pid | sort -nk2'
alias pssm='ps -eo uname,%cpu,%mem,fname,pid | sort -nk3'
alias pss='ps -eo uname,%cpu,%mem,fname,pid'
alias calc_tot="awk 'BEGIN {total=0} {total=total+\$1} END {print total}'"

alias offlineimap-tty='offlineimap -u TTY.TTYUI'
alias hnb-partecs='hnb $HOME/partecs/partecs-hnb.xml'
alias rest2html-css='rst2html --embed-stylesheet --stylesheet-path=/usr/share/python-docutils/s5_html/themes/default/print.css'

alias git_dl="cd ~/Downloads" 
alias cp_lastdl="git_dl && ls --sort=time | head -1 | xargs   -I file cp file ~/file && cd"
alias mv_lastdl="git_dl && ls --sort=time | head -1 | xargs   -I file mv file ~/file && cd"
alias gitWS="cd ~/Dropbox/workspace/"
alias son3="ls -ltr | tail -3"
alias son5="ls -ltr | tail -5"
alias son="ls -ltr | tail -1"
alias cp='cp -i'
alias mv='mv -i'
#alias rm='trash-put -v'

alias zcat='gunzip -c'
alias bss="byobu-select-session"
alias cs="top -b -n 1 | awk 'NR > 7 {a[\$2]+=\$9;}END{for (i in a) if ( a[i] != 0 ) print i\"\t\"a[i]}'"
alias ms="top -b -n 1 | awk 'NR > 7 {a[\$2]+=\$10;}END{for (i in a) if ( a[i] != 0 ) print i\"\t\"a[i]}'"
alias ssh="ssh -X"

# Functions:
zhead() {if [ "$#" -ne 2 ]; then
            zcat "$1" | head;
         else
            zcat "$2" | head "$1";
         fi
        }

ztail() {if [ "$#" -ne 2 ]; then
            zcat "$1" | tail;
         else
            zcat "$2" | tail "$1";
         fi
        }
zwc() { zcat "$1" | wc -l; }

# Macbook related:
#alias vim="gvim -v"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
set -o vi