git() {
    #The official git extension pack by the author of other random stuff never published, Nicba1010
    if [[ $@ == "commit suicide" ]]; then
        GIT_ROOT=$(git rev-parse --show-toplevel) && cd "$GIT_ROOT" && cd .. && rm -rf "$GIT_ROOT" && echo "$(basename $GIT_ROOT) has performed the act of seppuku" && unset GIT_ROOT
    elif [[ $@ == "commit jesus" ]]; then
        GIT_ROOT=$(git rev-parse --show-toplevel) && GIT_CLONE_URL=$(git config --get remote.origin.url) && cd "$GIT_ROOT" && cd .. && rm -rf "$GIT_ROOT" && git clone "$GIT_CLONE_URL" && cd "$GIT_ROOT" && echo "3 days passed and $(basename $GIT_ROOT) has risen from the dead" && unset GIT_ROOT && unset GIT_CLONE_URL
    elif [[ $@ == "--ext-help" ]]; then
        echo -e "Git extended commands help\n\tgit commit suicide\tdeletes the local repository\n\tgit commit jesus\tdeletes the local repository, clones it, and enters it"
    else
        command git "$@"
    fi
}
