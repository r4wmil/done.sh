#!/bin/sh
SUDO=sudo
#[ ! -z $TERMUX__PREFIX ] && SUDO=""

mkdir -p "$HOME/.local/bin"
cp "./done.sh" "$HOME/.local/bin/"
$SUDO cp "./completions.bash" "/etc/bash_completion.d/"
$SUDO cp "./completions.zsh" "/usr/share/zsh/vendor-completions/_done.sh"
