export PATH=~/Library/miniconda/bin:$PATH
export PYTHONPATH=~/Code/pythonlibs:$PYTHONPATH


## OH-MY-ZSH SPECIFIC STUFF ###################################################
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/my-zsh
ZSH_THEME="customrobby"

DISABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
CASE_SENSETIVE="false"

# Load the oh-my-zsh plugins and settings
plugins=(command-not-found pass git z brew pip sublime zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


## Final customization of zsh #################################################

# Write history of multiple zsh-sessions chronologicaly ordered
setopt inc_append_history

# Share history over multiple sessions
setopt share_history

# Disable the anoying autocorrect
unsetopt correct

# Hit escape twice to clear the current input line
bindkey "" vi-change-whole-line

# Disable <c-s> for stopping terminal
stty stop undef
stty start undef


## Personal aliases ###########################################################

source ~/.dotfiles/commands.sh

# Programming
alias vi="vim -u ~/.virc"
alias vim="vim_tmuxed"
alias gvim="gvim --remote-silent"
alias svi="sudo vi -u ~/.virc"
alias latexmk="latexmk -pdf"
alias cleanlatex="sh -c 'rm --force *.aux *.fdb_latexmk *.fls *.log *.synctex.gz *.out *.toc *.bib.bak *.end *.bbl *.blg *.toc *.auxlock'"
alias py="python2.7"
alias conf="vim ~/.zshrc"
alias nb="ipython notebook"

# Git aliases
alias gs="git --no-pager status"
alias ga="git add"
alias gl="git --no-pager lv -50 --no-merges"
alias gll="git lg"
alias gd="git difftool"
alias gf="git fetch"
alias gv="git difftool ...FETCH_HEAD"
alias gr="git rm"

# Science stuff
alias qtconsole="ipython qtconsole --pylab inline"
alias notebook="ipython notebook --browser=\"/usr/bin/firefox\" --pylab inline "

# Admin/Sudo-Stuff
alias tardir='tar -zcvf'
alias untar='tar -zxvf'
alias mkdir='mkdir -pv'             # Create parent dirs on demand
alias ports='netstat -tulanp'
alias du="du -h"
alias df="df -h"
alias pip="echo Use conda!"

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
# alias chown='chown --reserve-root'
# alias chmod='chmod --preserve-root'
# alias chgrp='chgrp --preserve-root'

# Printing
alias print-ls='lpstat -p -d'
