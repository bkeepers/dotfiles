sith() {
    i $(defaults read -g AppleInterfaceStyle 2>/dev/null)
}

i() {
    profile="$1"

    if [[ -z $profile ]]; then
        if [[ $ITERM_PROFILE == "Light" ]]; then
            profile="Dark"
        else
            profile="Light"
        fi
    fi

    echo -ne "\033]50;SetProfile=$profile\a"
    export ITERM_PROFILE=$profile
}

# sith
