#!/bin/sh
. ./globals.sh
set -x
$SUDO mkdir -p "$BIN_DIR"
awk -v o='{done_file}' -v n="$DONE_FILE" '{gsub(o,n); print}' './done.sh' \
	| $SUDO tee "$BIN_DIR/$BIN_NAME"
$SUDO chmod +x "$BIN_DIR/$BIN_NAME"
$SUDO cp "./completions/bash" "$BASH_COMP_DIR/$BIN_NAME"
$SUDO cp "./completions/zsh" "$ZSH_COMP_DIR/_$BIN_NAME"
