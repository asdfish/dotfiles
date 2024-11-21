#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

C_BG_ACCENT="\e[41m"
C_FG_ACCENT="\e[31m"
C_BG_ACCENT_2="\e[44m"
C_FG_ACCENT_2="\e[34m"
C_RESET="\e[0m"

POWERLINE_HOSTNAME="${C_BG_ACCENT} \u@\h ${C_RESET}${C_FG_ACCENT}${C_BG_ACCENT_2}${C_RESET}"
POWERLINE_DIRECTORY="${C_BG_ACCENT_2} \w ${C_RESET}${C_FG_ACCENT_2}${C_RESET}"
POWERLINE_PROMPT='\n \$! '
export PS1="${POWERLINE_HOSTNAME}${POWERLINE_DIRECTORY}${POWERLINE_PROMPT}"
export PATH="$PATH:~/.cargo/bin/:~/.local/bin/"

export CC='gcc'
export CXX='g++'

export BROWSER='firefox'
export EDITOR='nvim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT='-c'

alias cat='bat'
alias ls='ec'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
alias cjunk='wl-copy asdf'
alias v='nvim'
alias vc='nvim --clean'

fastfetch

set -o vi

eval "$(zoxide init bash --cmd cd)"
