#!/bin/sh

set -xe

CONFIG_DIRECTORIES=(
  "btop"
  "emacs"
  "fastfetch"
  "foot"
  "hypr"
  "nvim"
  "tmux"
  "wofi"
)

MISC_LINKS=(
  ".bashrc" "${HOME}"
  "scripts/setbg" "/usr/local/bin"
  "scripts/wofi_run" "/usr/local/bin"
)

REPO_DIRECTORY="$(realpath ..)"

for CONFIG_DIRECTORY in "${CONFIG_DIRECTORIES[@]}"; do
  cd "${REPO_DIRECTORY}"
  REAL_CONFIG_DIRECTORY="$(realpath "${CONFIG_DIRECTORY}")"
  cd "${HOME}/.config"

  ln -sf "${REAL_CONFIG_DIRECTORY}"
done

for ((I=0; I < "${#MISC_LINKS[@]}"; I+=2)); do
  cd "${REPO_DIRECTORY}"
  FROM="$(realpath "${MISC_LINKS[${I}]}")"

  cd "${MISC_LINKS[((${I}+1))]}"
  ln -sf "${FROM}"
done
