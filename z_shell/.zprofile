export PATH=$HOME/.mix/escripts:$PATH
eval "$(rbenv init -)"

## Aliases
alias bx="bundle exec"
alias brc="bundle exec rails console"
alias brs="bundle exec rails server"
alias brg="bundle exec rails generate"

alias pip="pip3"
alias python="python3"

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
autoload -Uz compinit
## Skip security check when -c option is set
compinit -c

