#!/bin/zsh

COMPLETIONS_DIR=$XDG_DATA_HOME/zsh-completions

docker completion zsh > $COMPLETIONS_DIR/_docker.zsh
glow completion zsh > $COMPLETIONS_DIR/_glow.zsh
gobuster completion zsh > $COMPLETIONS_DIR/_gobuster.zsh
rbw gen-completions zsh > $COMPLETIONS_DIR/_rbw.zsh
