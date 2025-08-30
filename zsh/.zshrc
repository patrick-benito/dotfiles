if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    docker
    asdf
    zsh-autosuggestions
    zsh-completions 
    zsh-history-substring-search 
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
