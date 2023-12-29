# if [ "$TMUX" = "" ]; then tmux; fi


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#b2b2b2,underline'


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



#Where should I put you? 
bindkey -s ^f "tmux-sessionizer\n"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)" 

# . /usr/bin/z.sh # loads z.sh

# alias
alias bat="batcat"
alias v="nvim"

# exa
# exa --tree --level=2 rust/rust-ansi-parse
# exa --ignore-glob="*case*"  
# exa --ignore-glob="Open*|rot??.sh|*case*"
alias el="exa -l --header --icons"   
alias eg="exa --long --git"

# git
alias gp="git push"
alias gs="git s"
alias glg="git lg"
alias gd="git diff"
alias gds="git diff --staged"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend"

#tmux
alias tm="tmux"
alias tma="tmux attach"
alias tmd="tmux detach"


# ~/.tmux/plugins
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
# ~/.config/tmux/plugins
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
