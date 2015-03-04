
function peco_select_history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco_select_history

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src

function peco-dir-open-app () {
  local file=$(find . -type f | grep -v "\/\." | grep -v "node_modules" | grep -v "bower_components" | peco --query "$LBUFFER")
  if [ -n "$file" ]; then
    BUFFER="vim ${file}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-dir-open-app
