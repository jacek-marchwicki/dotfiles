alias ssh="env TERM=xterm-256color ssh"

function enable
    available "$argv[1]"
    and source (eval "$argv" | psub)
end

enable hub alias -s
enable direnv hook fish
enable rbenv init -

if status --is-interactive
    if not functions -q fundle
        eval (curl -sfL https://git.io/fundle-install)
    end

    fundle plugin 'tuvistavie/fish-completion-helpers'
    fundle plugin 'hauleth/agnoster'
    fundle plugin 'tuvistavie/fish-fastdir'
    fundle plugin 'edc/bass'
    fundle plugin 'oh-my-fish/plugin-argu'
    fundle plugin 'oh-my-fish/plugin-expand'
    fundle plugin 'tuvistavie/fish-asdf'

    fundle init

    enable jump shell fish

    ssh-add -K ^/dev/null

    test -e $HOME/.iterm2_shell_integration.fish
    and source $HOME/.iterm2_shell_integration.fish
end
