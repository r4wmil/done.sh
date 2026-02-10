#!/bin/sh
. ./globals.sh
set -x
$SUDO rm "$BIN_DIR/$BIN_NAME"
$SUDO rm "$BASH_COMP_DIR/$BIN_NAME"
$SUDO rm "$ZSH_COMP_DIR/_$BIN_NAME"
