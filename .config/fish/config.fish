if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_user_paths $HOME/.local/bin $fish_user_paths
    set FLINE_PATH $HOME/.config/fish/fishline
    fnm env | source
    source $FILINE_PATH/init.fish
    fisher install jethrokuan/z
end

alias ls='eza'
alias ll='eza -l -a --icons'
alias lg='eza -G --icons -w=2'
alias lt='eza -T --icons'
alias lr='eza -R -L=3 --icons'
