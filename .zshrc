export PROMPT='%F{046}%n@%m%f:%F{033}%~%f$ '
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"
source <(fzf --zsh)
alias ls='eza -lh --group-directories-first --icons=never --sort date'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias grep='grep --color=auto'
alias code='codium'
alias gs='git status'
eval "$(zoxide init zsh --cmd cd)"
