# Keybinding remappings for zsh
# see possible functions with `zle -al`
# check keycode for requested keybinding by running `showkey -a`

# Ctrl+Right Arrow -> jump forwards by one word
bindkey "^[[1;5C" forward-word

# Ctrl+Left Arrow -> jump backwards by one word
bindkey "^[[1;5D" backward-word

# Ctrl+Backspace -> delete word backwards
bindkey '^H' backward-kill-word

# Alt+Left arrow -> jump to the beginning of the line
bindkey '^[[1;3D' beginning-of-line

# Alt+Right Arrow -> jump to the end of the line
bindkey '^[[1;3C' end-of-line

# Shift + Delete -> Delete entire line
bindkey '^[[3;2~' kill-whole-line
