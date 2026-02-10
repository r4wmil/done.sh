#!/bin/sh
SUDO=sudo

$SUDO rm "$HOME/.local/bin/done.sh"
$SUDO rm "/etc/bash_completion.d/completions.bas"
$SUDO rm "/usr/share/zsh/vendor-completions/_done.sh"
