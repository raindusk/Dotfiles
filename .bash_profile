source ~/.bashrc
shopt -s autocd
shopt -s cdspell
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
eval "$(rbenv init -)"

# Aliases
alias bx='bundle exec'
alias brc='bundle exec rails console'
alias brs='bundle exec rails server'

alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

## You can also use aliases, when using 'sudo' command
alias sudo='sudo '

