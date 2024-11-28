# Exit if not interactive
[[ $- != *i* ]] && return

# bash
set -o vi
shopt -s autocd

# prompt
C_BG_ACCENT="\e[41m"
C_FG_ACCENT="\e[31m"
C_BG_ACCENT_2="\e[44m"
C_FG_ACCENT_2="\e[34m"
C_RESET="\e[0m"

POWERLINE_HOSTNAME="${C_BG_ACCENT} \u@\h ${C_RESET}${C_FG_ACCENT}${C_BG_ACCENT_2}${C_RESET}"
POWERLINE_DIRECTORY="${C_BG_ACCENT_2} \w ${C_RESET}${C_FG_ACCENT_2}${C_RESET}"
POWERLINE_PROMPT='\n \$! '
export PS1="${POWERLINE_HOSTNAME}${POWERLINE_DIRECTORY}${POWERLINE_PROMPT}"

# aliases
## color
alias ls='ls -alsh --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

## nvim
alias v='nvim'
alias vc='nvim --clean'

# exports
export BROWSER='firefox'
export CC='gcc'
export CXX='g++'
export EDITOR='nvim'
export MANPAGER='nvim +Man!'

export PATH="${PATH}:${HOME}/.local/bin:${HOME}/.cargo/bin"

export CFLAGS='-O3 -march=native -pipe'

# functions
ghc() {
  if [ -z "${1}" ]; then
    return
  fi

  git clone "https://github.com/${1}" --depth 1 --recursive
}

# autolaunch
fastfetch

eval "$(zoxide init bash --cmd cd)"
