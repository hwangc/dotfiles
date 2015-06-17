#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source NVM
source $(brew --prefix nvm)/nvm.sh

# Source FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Alias
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# Export
export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
export VISUAL="/Applications/MacVim.app/Contents/MacOS/Vim"
export NVM_DIR=~/.nvm

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local file
  file=$(fzf --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && ${EDITOR:-vim} "$file"
}
