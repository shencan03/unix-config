export PROMPT='%F{046}%n@%m%f:%F{033}%~%f$ '
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"
source <(fzf --zsh)
alias ls='eza -lh --group-directories-first --icons=never --sort date'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias grep='grep --color=auto'
eval "$(zoxide init zsh --cmd cd)"

# Added by Antigravity
export PATH="/Users/shen/.antigravity/antigravity/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/shen/.lmstudio/bin"
# End of LM Studio CLI section


export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin

export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/shen/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$PATH:/Library/TeX/texbin"
