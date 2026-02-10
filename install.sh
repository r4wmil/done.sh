#!/bin/sh
. ./globals.sh
set -x
$SUDO mkdir -p "$BIN_DIR"
copy_with_replace() {
	awk -v o="$3" -v n="$4" \
		'{gsub(o,n); print}' "$1" \
		| $SUDO tee "$2"
}
copy_with_replace \
	'./done.sh' "$BIN_DIR/$BIN_NAME" \
	'{done_file}' "$DONE_FILE"
$SUDO chmod +x "$BIN_DIR/$BIN_NAME"
copy_with_replace \
	'./completions/bash' "$BASH_COMP_DIR/$BIN_NAME" \
	'{completions}' "$COMPLETIONS"
copy_with_replace \
	'./completions/zsh' "$ZSH_COMP_DIR/_$BIN_NAME" \
	'{completions}' "$COMPLETIONS"
