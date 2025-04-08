# sources
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh          # zsh-autosuggestions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  # zsh-syntax-highlighting

# nvm (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                    # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bindkey -s ^f "tmux-sessionizer\n"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)" 

# alias
alias bat="batcat"
alias v="nvim"
alias cd="z"

# eza
alias el="eza -l --header --icons"   
alias ls="eza --icons=always"
alias eg="eza --long --git"

# git
alias gp="git push"
alias gs="git s"
alias glg="git lg"
alias gd="git diff"
alias gds="git diff --staged"
alias ga="git add"
alias gcmsg="git commit -m"
alias gca="git commit --amend"



#tmux
alias tm="tmux"
alias tma="tmux attach"
alias tmd="tmux detach"
# t-smart-tmux-session-manager plugin paths
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH # ~/.tmux/plugins
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH # ~/.config/tmux/plugins

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward


# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#b2b2b2,underline'
# ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh                      # fzf
