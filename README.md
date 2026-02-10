# done.sh
CLI app that helps you track your every move.

## Installation/Uninstallation
```sh
./install.sh
./uninstall.sh
```

## Usage
Write in your shell:
```sh
$ done.sh chore: doing dishes
$ done.sh sport: pushups 20
$ done.sh sport: pullups 10
```

The $HOME/done.txt file becomes:
```txt
% 2026-02-10
% 18:06 chore: doing dishes
% 18:13 sport: pushups 20
% 18:15 sport: pullups 10
```
As simple as that!

Add 'alias d="done.sh"' if needed
```sh
$ d sport: pullups 10
$ d sport: pullups 15
$ d drawing: mona lisa
```

## Completions
You can set your cool custom completions in your done.txt:
```txt
%COMPLETIONS=sport: chores: study:
```

## Other options
You can install with custom options:
```sh
DONE_FILE="$HOME/Notes/done.txt" ./install.sh
```

Otions that can be defined:
```txt 
DONE_FILE - what file on system save to (default is done.txt)
BIN_DIR - binary directory
BIN_NAME - binary name
ZSH_COMP_DIR - Zsh completions directory
BASH_COMP_DIR - Bash completions directory
```

# Manual installation
Just copy done.sh to your binaries directory, change {donefile} to the path of your liking.
