# Add dotfiles bin to the `$PATH`
export PATH="$HOME/dotfiles/bin:$PATH";

# Change shell prompt
export PS1="\[\e[0;35m\] \w $ \[\e[m\]"

# Aliases
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3
alias dc=docker-compose
alias d=docker
alias l="ls -altrh"
alias wrapon="tput smam"
alias wrapoff="tput rmam"
alias kc="kubectl"

export JENV_ROOT=/usr/local/opt/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Load bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/goS

# Google Cloud CLI
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
