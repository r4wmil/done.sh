#!/bin/sh
SUDO=sudo
USR_DIR="$PREFIX/usr"
if [ ! -z $TERMUX__PREFIX ]; then
	SUDO=""
	USR_DIR="$PREFIX"
fi
BIN_DIR="$PREFIX/bin"
BIN_NAME="done.sh"
ZSH_COMP_DIR="$USR_DIR/share/zsh/vendor-completions"
BASH_COMP_DIR="$USR_DIR/share/bash-completion/completions"
