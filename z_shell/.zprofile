# Nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# JavaFX
export PATH_TO_FX="/Library/Java/JavaVirtualMachines/javafx-sdk-13.0.2/lib"

# Readline
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

# Aliases
alias bx="bundle exec"

## For Ruby with Bundler
alias br="bundle exec rails"
alias brg="bundle exec rails generate"
alias brc="bundle exec rails console"
alias brs="bundle exec rails server"

## For Python
alias python="python3"
alias pip="pip3"

alias gstat="git status"
alias glog="git log --oneline"
alias gco="git checkout"
alias gadd="git add"
alias gdiff="git diff"
alias gcmt="git commit -m"

## For shell
alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

## You can also use aliases, when using 'sudo' command
alias sudo='sudo '

# Global aliases
alias -g L='| less'
alias -g G='| grep'

# Completion
## Enable complementaly function
## -U Prevent overwriting functions defined by user
## -z Loading in zsh format
#autoload -Uz compinit
## Skip security check when -c option is set
#compinit -c

