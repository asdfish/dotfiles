#!/bin/sh
set -e

PREFIX="/usr/local/"

CONFIG_DIRECTORIES=(
  "btop"
  "fastfetch"
  "foot"
  "nvim"
  "qtile"
  "wofi"
)

EXECUTABES=()

MISC_LINKS=(
  ".bashrc" "${HOME}"
)

REPO_DIRECTORY="$(realpath ..)"

LINK() {
  FROM="${1}"
  TARGET_DIRECTORY="${2}"

  cd "${REPO_DIRECTORY}"
  FROM="$(realpath "${FROM}")"

  cd "${TARGET_DIRECTORY}"
  ln -sf "${FROM}"
}

for CONFIG_DIRECTORY in "${CONFIG_DIRECTORIES[@]}"; do
  LINK "${CONFIG_DIRECTORY}" "${HOME}/.config"
done

for EXECUTABLE in "${EXECUTABLES[@]}"; do
  LINK "${EXECUTABLE}" "${PREFIX}/bin"
done

for ((I=0; I < "${#MISC_LINKS[@]}"; I+=2)); do
  FROM="${MISC_LINKS[${I}]}"
  TARGET_DIRECTORY="${MISC_LINKS[((${I}+1))]}"

  LINK "${FROM}" "${TARGET_DIRECTORY}"
done