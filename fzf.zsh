# Setup fzf
# ---------
if [[ ! "$PATH" =~ "/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/bin" ]]; then
  export PATH="$PATH:/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" =~ "/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/man" && -d "/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/man" ]]; then
  export MANPATH="$MANPATH:/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- =~ i ]] && source "/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Volumes/HwangCHD/Users/HwangC/.vim/bundle/fzf/shell/key-bindings.zsh"

