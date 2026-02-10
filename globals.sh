#!/bin/sh
SUDO=sudo
USR_DIR="$PREFIX/usr"
if [ ! -z $TERMUX__PREFIX ]; then
	SUDO=""
	USR_DIR="$PREFIX"
fi

[ -z $ZSH_COMP_DIR ] && ZSH_COMP_DIR="$USR_DIR/share/zsh/vendor-completions"
[ -z $BASH_COMP_DIR ] && BASH_COMP_DIR="$USR_DIR/share/bash-completion/completions"
[ -z $BIN_DIR ] && BIN_DIR="$PREFIX/bin"
[ -z $BIN_NAME ] && BIN_NAME="done.sh"
[ -z $DONE_FILE ] && DONE_FILE="$HOME/done.txt"
[ -z $COMPLETIONS ] && COMPLETIONS="sport: prog: chores:"
