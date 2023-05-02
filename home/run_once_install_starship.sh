#!/bin/sh
set -e

[ ! $(command -v curl) ] && exit 1

if [ ! $(command -v starship) ]; then
    curl -fsLS https://starship.rs/install.sh | sh -s -- -y -b "$HOME/.local/bin" 1>/dev/null
fi
