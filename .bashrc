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

export COMMONFLAGS='-O2 -march=native -pipe'
export CFLAGS="${COMMONFLAGS}"
export CXXFLAGS="${COMMONFLAGS}"
export LDFLAGS='-fuse-ld=mold'

export EDITOR="nvim"
export TERM="footclient"
export BROWSER="firefox"
export MANPAGER='nvim +Man!'

# programming
alias cargo='~/.cargo/bin/cargo'
alias c='cargo'
alias m='make'
alias g='git'

# util
alias cat='bat'
alias ls='ec'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias cjunk='wl-copy asdf'
alias v='nvim'
alias vc='nvim --clean'

ghc() {
  if [ -z "${1}" ]; then
    return
  fi
  git clone "https://github.com/${1}" --depth 1 --recursive
}
# firefox profile
fp() {
  if [ -z "${1}" ]; then
    return
  fi

  firefox -P "${1}" & exit
}

shopt -s autocd
set -o vi

bind -x '"\C-l":clear'

fastfetch

eval "$(zoxide init bash --cmd cd)"
