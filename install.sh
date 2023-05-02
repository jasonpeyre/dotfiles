#!/bin/sh
set -e

export PATH="$PATH:$HOME/.local/bin"

if [ ! "$(command -v chezmoi)" ]; then
    sh -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$HOME/.local/bin"
    chezmoi="$HOME/.local/bin/chezmoi"
else
    chezmoi=chezmoi
fi

dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P)"
exec "$chezmoi" init --apply "--source=$dir"
