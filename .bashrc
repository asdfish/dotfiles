#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ADD_POWERLINE_PROMPT() {
  # $1 = color
  # $2 = contents
  # $3 = append

  if [ -z "${1}" ] || [ -z "${2}" ]; then
    return
  fi


  if [ -z "${3}" ]; then
    export PS1="\e[4${1}m${2}\e[0m\e[3${1}m\e[0m"
  else
    export PS1="${PS1}\e[3${1}m\e[0m\e[4${1}m${2}\e[0m\e[3${1}m\e[0m"
  fi
}

ADD_POWERLINE_PROMPT "1" " \u@\h "
ADD_POWERLINE_PROMPT "7" " \w " "true"
export PS1="${PS1}\n #! "
export PATH="$PATH:~/.cargo/bin/"

export CC="gcc"
export CXX="g++"

export EDITOR="nvim"
export TERM="footclient"
export BROWSER="firefox"
export MANPAGER='nvim +Man!'

alias cargo='~/.cargo/bin/cargo'
alias c='cargo'

alias cat='bat'
alias ls='ec'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias cjunk='wl-copy asdf'
alias v='nvim'
alias vc='nvim --clean'

alias m='make'

ghc() {
  if [ -z "${1}" ]; then
    return
  fi
  git clone "https://github.com/${1}" --depth 1 --recursive
}

shopt -s autocd
set -o vi

bind -x '"\C-l":clear'

fastfetch

eval "$(zoxide init bash --cmd cd)"
