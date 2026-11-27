#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

[ "$(uname -s)" = "Darwin" ] || { echo "This script is for macOS only. See README.md for other platforms."; exit 1; }

# Be mindful, ask user for consent. Who even reads scripts they execute anymore?
ask() {
  local answer=""
  [ -t 0 ] && read -r -p "$1 [y/N] " answer
  [[ "$answer" =~ ^[Yy]$ ]]
}

find_brew() {
  local brew
  for brew in brew /opt/homebrew/bin/brew /usr/local/bin/brew; do
    command -v "$brew" && return
  done
  return 1
}

if ! brew_bin="$(find_brew)"; then
  ask "Homebrew and the Xcode Command Line Tools are not installed. Install them now from https://brew.sh? (Be aware, executes remote bash!)" \
    || { echo "Install Homebrew from https://brew.sh, then run this script again."; exit 1; }
  installer="$(mktemp)"
  curl --fail --silent --show-error --location --proto '=https' --tlsv1.2 --output "$installer" \
    https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
  /bin/bash "$installer"
  brew_bin="$(find_brew)"
fi
eval "$("$brew_bin" shellenv)"

# This needs admin rights, so we beat the OS to it and explain why...
if ! brew list --cask gcc-arm-embedded > /dev/null 2>&1; then
  sudo --validate --prompt "Installing the Arm toolchain (gcc-arm-embedded) needs your macOS password: "
fi
brew bundle
git submodule update --init --recursive

# py-desmume has no support past 3.14 (sad), so we clamp the installed version
if ! python3 -c 'import sys; sys.exit(not (3, 11) <= sys.version_info[:2] <= (3, 14))' 2> /dev/null; then
  line="export PATH=\"$(brew --prefix python@3.14)/libexec/bin:\$PATH\""
  if grep --quiet --fixed-strings "$line" ~/.zprofile 2> /dev/null; then
    echo "Homebrew's Python 3.14 is already in ~/.zprofile. Open a new terminal before running make."
  elif ask "python3 is $(python3 --version 2>&1 || echo missing), but hg-engine needs 3.11 to 3.14. Add Homebrew's Python 3.14 to your PATH in ~/.zprofile?"; then
    echo "$line" >> ~/.zprofile
    echo "Added. Open a new terminal (or run: source ~/.zprofile) before running make."
  else
    echo "hg-engine needs Python 3.11 to 3.14. To use Homebrew's, run this, then open a new terminal:"
    echo "  echo '$line' >> ~/.zprofile"
  fi
fi

echo "4fcded0e2713dc03929845de631d0932ea2b5a37  rom.nds" | shasum --algorithm 1 --check \
  || echo "Put a clean US HeartGold ROM here as rom.nds, then run make."
