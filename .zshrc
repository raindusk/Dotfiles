# Fancy zshrc
# License : MIT
# http://mollifier.mit-license.org/

########################################
# Environment variable
export LANG=en_US.UTF-8
## or Deutsch(de_DE), Français(fr_FR), Español(es_ES), Русский Язык(ru_RU),
## 中文(zh_CN, zh_HK), 國語(zh_TW) 日本語(ja_JP) etc.
## 'locale -a' for details


# Enable colours
## -U Prevent overwriting functions defined by user
## -z Loading in zsh format
autoload -Uz colors
colors

# Set as Emacs-like key binding
# bindkey -e

# Set as Vim-like key binding
bindkey -v

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Prompt
## Display in 2 lines
PROMPT="%F{086}%n%f %(5~,%-1~/.../%2~,%~)
%F{205}%B$%b%f "

# Specifing word delimiter
## -U Prevent overwriting functions defined by user
## -z Loading in zsh format
autoload -Uz select-word-style
select-word-style default
## The characters specified here are regarded as word delimiters
## You can delete even one directory with (Ctrl + w)
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

########################################
# Completion
## Enable complementaly function
## -U Prevent overwriting functions defined by user
## -z Loading in zsh format
autoload -Uz compinit
compinit

## Don't distinguish between lower and upper case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## The forrowing of '../', doesn't complement the current directory
zstyle ':completion:*' ignore-parents parent pwd ..

## Complement the forrowing of 'sudo' command
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

## Complete process name of 'ps' command
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

## Complete Git commands
## The script from '~/.zsh/_git'
fpath=(~/.zsh $fpath)


########################################
# VCS information such as Git
## -U Prevent overwriting functions defined by user
## -z Loading in zsh format
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

## Style the looks
zstyle ':vcs_info:*' formats '%F{086}[%s]-<%b>%f'
zstyle ':vcs_info:*' actionformats '%F{205}[%s]-<%b|%a>%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg


########################################
# Options
## Enable to display japanese file name
setopt print_eight_bit

## Disable beep
# setopt no_beep

## Disable flow control
setopt no_flow_control

## Don't exit with (Ctrl + D)
setopt ignore_eof

## Regard the forrowing of '#' as comment
setopt interactive_comments

## Do 'cd' by directory name only
setopt auto_cd

## And automatically 'pushd' it
setopt auto_pushd
## Don't 'pushd' duplicate directories
setopt pushd_ignore_dups

## Share history among multiple zsh
setopt share_history

## Ignore all of duplicate commands
setopt hist_ignore_all_dups

## Ignore command starting with space
setopt hist_ignore_space

## When saving the history, remove extra or unnecessary space
setopt hist_reduce_blanks

## Use sophisticated glob
setopt extended_glob

########################################
# Key binding

## When searching the history with 'Ctrl + R', you can use glob pattern
bindkey '^R' history-incremental-pattern-search-backward

########################################
# Aliases
## Copy standard output to clipboard with C
## mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    ## macOS
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    ## Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    ## Cygwin
    alias -g C='| putclip'
fi

########################################
# Setting for each OS
case ${OSTYPE} in
    darwin*)
        ## For macOS
        export CLICOLOR=1
        export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
        alias ls='ls -G -F'
        ;;
    linux*)
        ## For Linux
        alias ls='ls -F --color=auto'
        ;;
esac

# For Apple Terminal.app if you're a macOS user
## Open new tab with same directory
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
  function chpwd {
    printf '\e]7;%s\a' "file://$HOSTNAME${PWD// /%20}"
  }
  chpwd
fi

## Vim modeline
# vim :set fenc=UTF-8 ff=unix,mac,dos ft=zsh:
