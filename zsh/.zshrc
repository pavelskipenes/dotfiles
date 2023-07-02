# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTSIZE=1000
SAVEHIST=1000
bindkey -v
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
# End of lines added by compinstall

# theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
if [[ -f $ZDOTDIR/p10k.zsh ]]; then
  source $ZDOTDIR/p10k.zsh
fi

## Aliases
if [[ -f $ZDOTDIR/aliases.zsh ]]; then
   source $ZDOTDIR/aliases.zsh
fi

## Key remappings
if [[ -f $ZDOTDIR/mappings.zsh ]]; then
  source $ZDOTDIR/mappings.zsh
fi

## Syntax highlighting
SYNTAX_HIGHLIGHTING=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [[ -f $SYNTAX_HIGHLIGHTING ]]; then
  source $SYNTAX_HIGHLIGHTING
fi

## Completions
COMPLETIONS_DIR=$XDG_DATA_HOME/zsh-completions
if [[ ! -d $COMPLETIONS_DIR ]]; then
  mkdir -p $COMPLETIONS_DIR
  if [[ -f $ZDOTDIR/completions.zsh ]]; then
    source $ZDOTDIR/completions.zsh
  fi
fi

fpath=(COMPLETIONS_DIR $fpath)
