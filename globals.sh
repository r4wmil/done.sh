#!/bin/sh
SUDO=sudo
USR_DIR="$PREFIX/usr"
if [ ! -z $TERMUX__PREFIX ]; then
	SUDO=""
	USR_DIR="$PREFIX"
fi
BIN_DIR="$PREFIX/bin"
BIN_NAME="done.sh"
ZSH_COMP_DIR="/usr/share/zsh/vendor-completions"
BASH_COMP_DIR="/usr/share/bash-completion/completions"
