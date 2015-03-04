
export LANG=ja_JP.UTF-8
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS="di=01;36:ln=01;35:ex=01;32"
export EDITOR=vim

fpath=(~/.zsh/completion $fpath)

alias g="git"
alias p="pwd"
alias ll="ls -al"

# 補完
autoload -Uz compinit; compinit
# 色
autoload colors; colors
# GitなどVersion Control Systemの情報
autoload -Uz vcs_info
precmd () { vcs_info }
# 履歴検索
autoload history-search-end
# gitの補完
autoload -U compinit; compinit -u

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey -e
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 
bindkey "^H" peco_select_history
bindkey "^G" peco-src
bindkey "^O" peco-dir-open-app

zstyle ":vcs_info:*" enable git svn hg bzr
zstyle ":vcs_info:git:*" check-for-changes true
zstyle ":vcs_info:git:*" stagedstr " +"
zstyle ":vcs_info:git:*" unstagedstr " *"
zstyle ":vcs_info:git:*" formats "(%b%c%u)"
zstyle ":vcs_info:git:*" actionformats "(%b|%a)"
zstyle ":completion:*" list-colors "di=36" "ln=35" "ex=32"

precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

PROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}%1(v|%F{green}%1v%f|) "
#RPROMPT="%{$fg[cyan]%}%n@%m %{$reset_color%}"

# ミスタイプのときのコマンド提示
setopt correct
# リストを詰めて表示
setopt list_packed
# 重複する履歴を無視する
setopt hist_ignore_dups
# 履歴を共有
setopt share_history
# 先頭にスペースを入れると履歴を残さない
setopt hist_ignore_space
# ディレクトリ名だけで移動する
setopt auto_cd
# pushdの履歴は残さない
setopt auto_pushd
setopt pushd_ignore_dups
# beep音鳴らさない
setopt nobeep
# プロンプトに変数を展開できる
setopt prompt_subst

. ~/.zsh/peco.zsh
