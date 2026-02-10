#!/bin/sh
SUDO=sudo
mkdir -p ~/.local/bin
cp "./done.sh" "$HOME/.local/bin/"
$SUDO cp "./completions.bash" "/etc/bash_completion.d/"
$SUDO cp "./completions.zsh" "/usr/share/zsh/vendor-completions/_done.sh"
#echo "Make sure to add \$HOME/.local/bin/ to PATH"
#rm $HOME/.local/bin/done.sh
#rm $PREFIX/etc/bash_completion.d/
#rm $PREFIX/usr/share
