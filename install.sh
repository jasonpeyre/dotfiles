#!/bin/sh
set -e

dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P)"

if [ ! "$(command -v chezmoi)" ]; then
    sh -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$HOME/.local/bin"
    chezmoi="$HOME/.local/bin/chezmoi"
else
    chezmoi=chezmoi
fi

exec "$chezmoi" init --apply "--source=$dir"

