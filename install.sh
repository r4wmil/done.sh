#!/bin/sh
. ./globals.sh

set +x

$SUDO mkdir -p "$BIN_DIR"
copy_with_replace() {
	awk -v o="{donefile}" -v n="$DONE_FILE" \
		'{gsub(o,n); print}' "$1" \
		| $SUDO tee "$2" >/dev/null
}

echo "Detemplating & copying:"

echo "./done.sh -> $BIN_DIR/$BIN_NAME"
copy_with_replace './done.sh' "$BIN_DIR/$BIN_NAME"
$SUDO chmod +x "$BIN_DIR/$BIN_NAME"

echo "./completions/bash -> $BIN_DIR/$BIN_NAME"
copy_with_replace './completions/bash' "$BASH_COMP_DIR/$BIN_NAME"

echo "./completions/zsh -> $BIN_DIR/$BIN_NAME"
copy_with_replace './completions/zsh' "$ZSH_COMP_DIR/_$BIN_NAME"

echo "If no errors, then everything is ok!"
