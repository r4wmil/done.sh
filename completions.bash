_done() {
	local cur
	cur="${COMP_WORDS[COMP_CWORD]}"
	COMPREPLY=($(compgen -W "sport prog art" -- "$cur"))
}
complete -F _done done.sh
