# neovim
v() {
    if [ $# -eq 0 ]; then
        command nvim .
    else
        command nvim "$@"
    fi
}
