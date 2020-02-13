# Bash autocompletion for kubech commands.

# Auto complete for "kubechc" command.
_kubechc_completions() {
    COMPREPLY=($(compgen -W "$(kubechc | tr '\n' ' ')" "${COMP_WORDS[1]}"))
}

complete -F _kubechc_completions kubechc kchc

# Auto complete for "kubechn" command.
_kubechn_completions() {
    COMPREPLY=($(compgen -W "$(kubechn | tr '\n' ' ')" "${COMP_WORDS[1]}"))
}

complete -F _kubechn_completions kubechn kchn
