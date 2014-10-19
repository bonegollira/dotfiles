
# alias
alias ll='ls -l'
alias cl='clear'
alias p='pwd'

# git settings
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
CDIR=`pwd | awk -F / '{print $NF}'`
#export PS1='[@$USER~$CDIR]$(__git_ps1)$ '
export PS1='[~$(basename $(dirname `pwd`))/$(basename `pwd`)$(__git_ps1)]$ '

