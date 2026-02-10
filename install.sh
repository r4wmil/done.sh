#!/bin/sh
. ./globals.sh
set -x
$SUDO mkdir -p "$BIN_DIR"
$SUDO cp "./done.sh" "$BIN_DIR/$BIN_NAME"
$SUDO cp "./completions/bash" "$BASH_COMP_DIR/$BIN_NAME"
$SUDO cp "./completions/zsh" "$ZSH_COMP_DIR/_$BIN_NAME"
