export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d"
 [[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# Bash completions
 complete -F __start_kubectl kc
 complete -F _docker d

# Python
 eval "$(pyenv init -)"

# NodeJS
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Terraform
complete -C /usr/local/bin/terraform terraform

# Go-jira
eval "$(jira --completion-script-bash)"
