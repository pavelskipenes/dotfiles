alias gap="git add -p"
alias ll="lsd -la"
alias lll="lsd --tree"
alias log="journalctl -b0 -u "
alias ls=lsd
alias md="glow -p"
alias open="xdg-open"
alias ping="gping"
alias py=bpython
alias sc="systemctl"
alias vim=nvim

# workarond for non xdg compliant applications
alias gdb=gdb -n -x $XDG_CONFIG_HOME/gdb/init
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

## Reduce the number of times you have to type a password
##
## Link: https://wiki.archlinux.org/title/Sudo#Reduce_the_number_of_times_you_have_to_type_a_password
alias sudo='sudo -v; sudo '
