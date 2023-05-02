#!/usr/bin/env zsh
set -eu

command_no_comp () {
    local command_name="$1"
    if (( $+commands[$command_name] && ! $+functions[_$command_name] )); then
        return 0 # true
    else
        return 1
    fi
}

ZCOMPDIR=~/.local/share/zsh/completions

if command_no_comp chezmoi; then
    chezmoi completion zsh > "$ZCOMPDIR/_chezmoi"
fi
if command_no_comp poetry; then
    poetry completions zsh > "$ZCOMPDIR/_poetry"
fi
if command_no_comp gh; then
    gh completion -s zsh > "$ZCOMPDIR/_gh"
fi
