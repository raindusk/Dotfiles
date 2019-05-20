# Git commands completion
source ~/.git-completion/git-completion.bash
# Display the git branch name
source ~/.git-completion/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# Prompt
# \u              Your account name
# \h              Your hostname
# \w              Current directory
# \$              Prompt
# \[              Start invisible escape sequence
# \]              End ALL of invisible escape sequence
# \e              An ANCII escape character
# 38;5;086        A foreground colour
# 1m              Bold text
# 0m              No style

PS1="\n\[\e[38;5;086;1m\]\u \[\e[38;5;195;1m\]\h \[\e[0m\]\w\n\[\e[38;5;205;1m\]\$\[\e[0m\] "
