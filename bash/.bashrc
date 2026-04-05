#

# alias & function loader
for dir in ~/.shell/aliases ~/.shell/functions; do
    for file in "$dir"/*.sh; do
        [ -e "$file" ] && source "$file"
    done
done

# Starship
eval "$(starship init bash)"
. "$HOME/.cargo/env"
