#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ec'
alias grep='grep --color=auto'
alias cjunk='wl-copy asdf'

C_BG_ACCENT="\e[41m"
C_FG_ACCENT="\e[31m"
C_BG_ACCENT_2="\e[44m"
C_FG_ACCENT_2="\e[34m"
C_RESET="\e[0m"

POWERLINE_HOSTNAME="${C_BG_ACCENT} \u@\h ${C_RESET}${C_FG_ACCENT}${C_BG_ACCENT_2}${C_RESET}"
POWERLINE_DIRECTORY="${C_BG_ACCENT_2} \w ${C_RESET}${C_FG_ACCENT_2}${C_RESET}"
POWERLINE_PROMPT='\n \$! '
export PS1="${POWERLINE_HOSTNAME}${POWERLINE_DIRECTORY}${POWERLINE_PROMPT}"
export PATH="$PATH:~/.cargo/bin/"

export CC="gcc"
export CXX="g++"

export EDITOR="nvim"
export TERM="footclient"
export BROWSER="firefox"

set -o vi

fastfetch

eval "$(zoxide init bash --cmd cd)"
