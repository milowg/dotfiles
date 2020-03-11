export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d"
 [[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

 complete -F __start_kubectl kc
 complete -F _docker d