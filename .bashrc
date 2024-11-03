#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ec'
alias grep='grep --color=auto'
alias qstart='qtile start -b wayland'

alias ta="tmux attach"
alias tls="tmux ls"

C_BG_ACCENT="\e[41m"
C_FG_ACCENT="\e[31m"
C_BG_ACCENT_2="\e[44m"
C_FG_ACCENT_2="\e[34m"
C_RESET="\e[0m"

POWERLINE_HOSTNAME="${C_BG_ACCENT} \u@\h ${C_RESET}${C_FG_ACCENT}${C_BG_ACCENT_2}${C_RESET}"
POWERLINE_DIRECTORY="${C_BG_ACCENT_2} \w ${C_RESET}${C_FG_ACCENT_2}${C_RESET}"
POWERLINE_PROMPT='\n \$! '
export PS1="${POWERLINE_HOSTNAME}${POWERLINE_DIRECTORY}${POWERLINE_PROMPT}"
export PATH="$PATH:~/.cargo/bin/:~/.config/emacs/bin/"

export CC="gcc"
export CXX="g++"

export BROWSER="firefox"
export EDITOR="nvim"
export TERM="footclient"

fastfetch

eval "$(zoxide init bash --cmd cd)"