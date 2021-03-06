# USE THIS FOR GUI CONFIGURATION

source /Users/hem/.mac_colors
source /Users/hem/.profile
source ~/.kubectl_completion

# show git branch in the bash promp, e.g. "~/Projects/some-project(master) $"
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh"  ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export BASH_SILENCE_DEPRECATION_WARNING=1
